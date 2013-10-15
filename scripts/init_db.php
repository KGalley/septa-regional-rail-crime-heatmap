<?php
/**
 * This makes our life easier when dealing with paths. Everything is relative
 * to the application root now.
 * 
 * 
 * ogr2ogr -f "KML" C:\Users\jsmiley\Development\what-hood\draft\Neighborhoods_Philadelphia\Neighborhoods_Philadelphia.kml C:\Users\jsmiley\Development\what-hood\draft\Neighborhoods_Philadelphia\Neighborhoods_Philadelphia.shp

ogr2ogr -f "KML" C:\Users\jsmiley\Development\what-hood\draft\nis_neighborhood\nis_neighborhood.kml C:\Users\jsmiley\Development\what-hood\draft\nis_neighborhood\nis_neighborhood.shp
 * 
 */

if( $argv[1] == '--development' )
    putenv('APPLICATION_ENV=development' );
else if( $argv[1] == '--production' )
    putenv('APPLICATION_ENV=production' );

require("Bootstrap.php");

$sm = Bootstrap::getServiceManager();
 
if( true ) {
    $schemaTool = new SeptaCrime\SchemaTool($sm);
    $schemaTool->clearCache();
    $schemaTool->dropSchema();
    $schemaTool->createSchema();
}

$incidentMapper = $sm->get('SeptaCrime\Mapper\IncidentMapper');

$incidentFile = new \SeptaCrime\IncidentFile( "../data/police_inct.csv" );

while( ($incident = $incidentFile->nextIncident() ) !== null ) {
    try {
        $incidentMapper->save( $incident );
        print ".";
    } catch( \Exception $e ) {
        die( $e->getMessage() );
    }
}