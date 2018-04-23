USE datamart;
GO

-- [[ Create Input File Manifest ]] ------------------------------------------------------------------------

IF OBJECT_ID('dbo.inputFileManifest', 'U') IS NOT NULL
	DROP TABLE dbo.inputFileManifest;
GO

CREATE TABLE dbo.inputFileManifest (
	sourceName VARCHAR(255) NOT NULL ,
	category VARCHAR(25) NULL ,
	sourceUrl VARCHAR(500) NULL ,
	fileDate AS SUBSTRING(sourceUrl, LEN(sourceUrl) - 10, 7)
);
GO

INSERT INTO dbo.inputFileManifest
VALUES	( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-05.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-03.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-06.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-02.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-11.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2013-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-01.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-02.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-03.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-12.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-06.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-03.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-12.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-01.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-01.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-08.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-10.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-02.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-02.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-06.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2013-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-03.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-08.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-01.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-11.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-03.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-09.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-02.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-01.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-04.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-06.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-03.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-11.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-03.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-05.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2013-08.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-09.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-02.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-07.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-03.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-02.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-05.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-06.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-09.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-02.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-10.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-05.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-02.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-03.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-06.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-02.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-08.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-04.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-09.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-06.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-03.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-01.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-06.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-06.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-04.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-03.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-09.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-02.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-10.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-02.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-09.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-02.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-01.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-06.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2013-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-06.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-01.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-03.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-06.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-05.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-06.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-03.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-03.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-10.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-09.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-03.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-05.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-03.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-11.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-11.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-10.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-01.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-09.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-02.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2009-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-11.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-07.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-07.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-09.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-11.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-09.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-01.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-04.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-02.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-01.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2010-01.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-05.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-07.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-01.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-07.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-08.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2017-12.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-06.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-10.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-11.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-11.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-02.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-04.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-06.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-01.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2015-01.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2013-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2012-01.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-06.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2017-04.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-12.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2016-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2015-12.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-10.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-08.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2014-07.csv' ) ,
		( 'NY Taxi', 'FHV', 'https://s3.amazonaws.com/nyc-tlc/trip+data/fhv_tripdata_2015-10.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-04.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2014-08.csv' ) ,
		( 'NY Taxi', 'Yellow', 'https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2011-12.csv' ) ,
		( 'NY Taxi', 'Green', 'https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2013-12.csv' );
GO





-- [[ FULL Lookup Query ]] ------------------------------------------------------------------------

/*
SELECT	*
FROM	dbo.inputFileManifest
WHERE	sourceName = 'NY Taxi'
		AND category = 'Yellow'
ORDER BY fileDate DESC;
*/





-- [[ Create Watermark Table ]] ------------------------------------------------------------------------

IF OBJECT_ID('dbo.datasetWatermark', 'U') IS NOT NULL
	DROP TABLE dbo.datasetWatermark;
GO

CREATE TABLE dbo.datasetWatermark (
	dataset VARCHAR(50) NOT NULL ,
	lastLoadValue VARCHAR(50) NOT NULL
);
GO

INSERT INTO dbo.datasetWatermark
VALUES ( 'NY Taxi', '1990-01' );





-- [[ Create Watermark Procs ]] ------------------------------------------------------------------------

-- Set Watermark Value
CREATE OR ALTER PROCEDURE dbo.setDatasetWatermark
	@datasetName VARCHAR(50) ,
	@lastLoadValue VARCHAR(50)
AS
BEGIN
	-- Find current latest (in case loop not processed ascending)
	DECLARE @maxLoadValue VARCHAR(50);

	SELECT	@maxLoadValue = MAX(lastLoadValue)
	FROM	dbo.datasetWatermark
	WHERE	dataset = @datasetName;

	-- Update value
	IF @lastLoadValue > @maxLoadValue
		UPDATE	dbo.datasetWatermark
		SET		lastLoadValue = @lastLoadValue
		WHERE	dataset = @datasetName;
END;
GO

-- Get Collection
CREATE OR ALTER PROCEDURE dbo.getDatasetWatermark
	@datasetName VARCHAR(50)
AS
BEGIN
	SELECT	*
	FROM	dbo.inputFileManifest
	WHERE	sourceName = @datasetName
			AND category = 'Yellow'
			AND fileDate > (SELECT MAX(lastLoadValue) FROM dbo.datasetWatermark WHERE dataset = @datasetName);
END
GO




-- [[ Test ]] ------------------------------------------------------------------------
/*
SELECT * FROM dbo.datasetWatermark ORDER BY lastLoadValue DESC;

SELECT * FROM dbo.inputFileManifest;

EXEC dbo.getDatasetWatermark @datasetName = 'NY Taxi';

EXEC dbo.setDatasetWatermark @datasetName = 'NY Taxi' ,
							 @lastLoadValue = '2017-06';

-- UPDATE dbo.datasetWatermark SET lastLoadValue = '2017-09' WHERE dataset = 'NY Taxi';
*/



-- [[ Summary Table ]] ------------------------------------------------------------------------

IF OBJECT_ID('dbo.tipSummary', 'U') IS NOT NULL
	DROP TABLE dbo.tipSummary;
GO

CREATE TABLE dbo.tipSummary (
	trip_pickup_date VARCHAR(50) ,
	trip_dropoff_date VARCHAR(50) ,
	PULocationID VARCHAR(50) ,
	DOLocationID VARCHAR(50) ,
	avg_tip_amount MONEY
);
GO



SELECT	COUNT(*) 
FROM	dbo.tipSummary;
-- 2,203,874

TRUNCATE TABLE dbo.tipSummary;

1,103,350