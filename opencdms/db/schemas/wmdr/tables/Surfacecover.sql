/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.2 		*/
/*  Created On : 04-May-2022 21:43:57 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "Surfacecover" CASCADE
;

/* Create Tables */

CREATE TABLE "Surfacecover"
(
	"Surfacecover" varchar NULL,	-- 4-01 The (bio)physical cover on the earth's surface in the vicinity of the observations from the LandCoverType codelist .  NOTE: Only applies for surface-based (fixed) observing facilities.
	"Surfacecoverclassification" varchar NULL,	-- 4-02 Reference to a surface cover classification type from the SurfaceCoverClassificationType codelist. NOTE: only if 4-01 is specified
	"Validperiod" varchar NULL,	-- The time period for which the specified surfaceCover is known to be valid. Normally, this will be specified as a "from" date, implying that the validity extends but does not include the next surfaceCover on record. If only one surfaceCover is specified for an observing facility, the time stamp is optional.
	"SurfacecoverID" varchar NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "Surfacecover" ADD CONSTRAINT "PK_Surfacecover"
	PRIMARY KEY ("SurfacecoverID")
;

/* Create Table Comments, Sequences for Autonumber Columns */

COMMENT ON TABLE "Surfacecover"
	IS 'A SurfaceCover is a climate zone accompanied by a timestamp indicating the time from which that surface cover class is considered to be valid. If known, an end time may also be provided. In WIGOS, an ObservingFacility may carry multiple surface cover classes which are valid over different consecutive periods of time. If only a single surface cover class is specified, the timestamp is optional.'
;

COMMENT ON COLUMN "Surfacecover"."Surfacecover"
	IS '4-01 The (bio)physical cover on the earth''s surface in the vicinity of the observations from the LandCoverType codelist . 
NOTE: Only applies for surface-based (fixed) observing facilities.'
;

COMMENT ON COLUMN "Surfacecover"."Surfacecoverclassification"
	IS '4-02 Reference to a surface cover classification type from the SurfaceCoverClassificationType codelist. NOTE: only if 4-01 is specified'
;

COMMENT ON COLUMN "Surfacecover"."Validperiod"
	IS 'The time period for which the specified surfaceCover is known to be valid. Normally, this will be specified as a "from" date, implying that the validity extends but does not include the next surfaceCover on record. If only one surfaceCover is specified for an observing facility, the time stamp is optional.'
;