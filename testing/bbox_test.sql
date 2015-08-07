﻿select ST_AsGeoJSON(geom) as shape from milata_test_route 
where geom && ST_GeomFromText('SRID=4326;POLYGON((-84.31766510009766 9.771994523201778,-83.87752532958984 9.771994523201778,-83.87752532958984 10.100360134865728,-84.31766510009766 10.100360134865728,-84.31766510009766 9.771994523201778))') and ST_Intersects(geom, ST_GeomFromText('SRID=4326;POLYGON((-84.31766510009766 9.771994523201778,-83.87752532958984 9.771994523201778,-83.87752532958984 10.100360134865728,-84.31766510009766 10.100360134865728,-84.31766510009766 9.771994523201778))')) 
UNION ALL select ST_AsGeoJSON(geom) as shape from rte_test_milata_1 
where geom && ST_GeomFromText('SRID=4326;POLYGON((-84.31766510009766 9.771994523201778,-83.87752532958984 9.771994523201778,-83.87752532958984 10.100360134865728,-84.31766510009766 10.100360134865728,-84.31766510009766 9.771994523201778))') and ST_Intersects(geom, ST_GeomFromText('SRID=4326;POLYGON((-84.31766510009766 9.771994523201778,-83.87752532958984 9.771994523201778,-83.87752532958984 10.100360134865728,-84.31766510009766 10.100360134865728,-84.31766510009766 9.771994523201778))'));
