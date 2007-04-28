/*Vijay Pande: Bug:3834: For Specimen class = 'Molecular' following two permissible values are added*/
INSERT INTO CATISSUE_PERMISSIBLE_VALUE (IDENTIFIER, VALUE, PARENT_IDENTIFIER, PUBLIC_ID) VALUES(2651,'Total Nucleic Acid',1,NULL);
INSERT INTO CATISSUE_PERMISSIBLE_VALUE (IDENTIFIER, VALUE, PARENT_IDENTIFIER, PUBLIC_ID) VALUES(2652,'Whole Genome Amplified DNA',1,NULL);
/* Virender Mehta Non Required valuess 'Not specified' for race and ethnicity for CatissueV1.2 requirement*/
DELETE FROM CATISSUE_PERMISSIBLE_VALUE where IDENTIFIER=2649;
DELETE FROM CATISSUE_PERMISSIBLE_VALUE where IDENTIFIER=2650;
/* Virender Mehta update Male and Female values for CatissueV1.2 requirement*/
UPDATE CATISSUE_PERMISSIBLE_VALUE SET VALUE = "Male Gender" WHERE identifier=59;
UPDATE CATISSUE_PERMISSIBLE_VALUE SET VALUE = "Female Gender" WHERE identifier=61;

/*Shital Lawhale Bug#3549 */
/*update the CATISSUE_SEARCH_DISPLAY_DATA table for ATTRIBUTE_ORDER*/
/* ************************************** QUERIES FOR PARTICIPANT ***********************************************************/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE  RELATIONSHIP_ID=27 AND COL_ID =118;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE RELATIONSHIP_ID=27 AND COL_ID =117;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =12  WHERE  RELATIONSHIP_ID=27 AND COL_ID =116;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE  RELATIONSHIP_ID=27 AND COL_ID =119;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE  RELATIONSHIP_ID=27 AND COL_ID =120;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =11   WHERE  RELATIONSHIP_ID=27 AND COL_ID =303;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =10   WHERE  RELATIONSHIP_ID=27 AND COL_ID =304;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE  RELATIONSHIP_ID=27 AND COL_ID =121;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE  RELATIONSHIP_ID=27 AND COL_ID =122;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (27, 123, 'Race',1);*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE  RELATIONSHIP_ID=27 AND COL_ID =124;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9 WHERE  RELATIONSHIP_ID=27 AND COL_ID =125;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (27, 126, 'Activity Status',1);*/

/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (44, 185, 'Medical Record Number Source');*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =4 WHERE  RELATIONSHIP_ID=28 AND COL_ID =128;

/* ************************************** QUERIES FOR COLLECTION PROTOCOL REGISTRATION ************************************** */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =8 WHERE  RELATIONSHIP_ID=29 AND COL_ID =59;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =6 WHERE  RELATIONSHIP_ID=45 AND COL_ID =224;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =1 WHERE  RELATIONSHIP_ID=29 AND COL_ID =60;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER =7 WHERE  RELATIONSHIP_ID=29 AND COL_ID =61;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (29, 64, 'Activity Status',1);*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE  RELATIONSHIP_ID=46 AND COL_ID =117;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE   RELATIONSHIP_ID=46 AND COL_ID =118;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE   RELATIONSHIP_ID=46 AND COL_ID =119;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE  RELATIONSHIP_ID=46 AND COL_ID =120;

/* ************************************** QUERIES FOR SPECIMEN COLLECTION GROUP **********************************************/
/*Inserting value for ATTRIBUTE_ORDER in specimen coll grp*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 1 WHERE  RELATIONSHIP_ID=30 AND COL_ID =320;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12 WHERE  RELATIONSHIP_ID=30 AND COL_ID =209;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7 WHERE  RELATIONSHIP_ID=30 AND COL_ID =210;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE  RELATIONSHIP_ID=30 AND COL_ID =211;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (30, 212, 'Activity Status',1);*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE  RELATIONSHIP_ID=48 AND COL_ID =224;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER  = 9 WHERE  RELATIONSHIP_ID=31 AND COL_ID =57;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE  RELATIONSHIP_ID=32 AND COL_ID =185;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2 WHERE  RELATIONSHIP_ID=33 AND COL_ID =60;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6 WHERE  RELATIONSHIP_ID=47 AND COL_ID =45;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5 WHERE  RELATIONSHIP_ID=47 AND COL_ID =46;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE  RELATIONSHIP_ID=54 AND COL_ID =117;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE  RELATIONSHIP_ID=54 AND COL_ID =118;

/* ************************************** QUERIES FOR SPECIMEN ***************************************************************/
/*Inserting value for ATTRIBUTE_ORDER in specimen*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 2  WHERE  RELATIONSHIP_ID=34 AND COL_ID =323;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 20  WHERE  RELATIONSHIP_ID=34 AND COL_ID =191;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 6  WHERE  RELATIONSHIP_ID=34 AND COL_ID =102;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 5  WHERE  RELATIONSHIP_ID=34 AND COL_ID =201;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 9  WHERE  RELATIONSHIP_ID=34 AND COL_ID =199;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 7  WHERE  RELATIONSHIP_ID=34 AND COL_ID =192;
/* Aniruddha : Model Changes for Specimen */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 12  WHERE  RELATIONSHIP_ID=34 AND COL_ID =208;

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 16  WHERE  RELATIONSHIP_ID=34 AND COL_ID =193;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 17  WHERE  RELATIONSHIP_ID=34 AND COL_ID =194;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 18  WHERE  RELATIONSHIP_ID=34 AND COL_ID =195;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA  SET ATTRIBUTE_ORDER =1 WHERE  RELATIONSHIP_ID=34 AND COL_ID =196;
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME, DEFAULT_VIEW_ATTRIBUTE) VALUES (34, 198, 'Activity Status',1);*/
/*Kapil: Mearge the columns of the sub-specimens.*/
/* Aarti: Bug#1496- To allow query on initial quantity as well as available quantity */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 13 WHERE  RELATIONSHIP_ID=34 AND COL_ID =103;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 14 WHERE  RELATIONSHIP_ID=34 AND COL_ID =104;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 15 WHERE  RELATIONSHIP_ID=34 AND COL_ID =105;
/* Aarti: Added for Bug#2352- User can not search for specific specimen. */
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 8 WHERE  RELATIONSHIP_ID=34 AND COL_ID =322;
/*Shital : Bug#3835: Added entry for created date in specimen*/
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 19 WHERE  RELATIONSHIP_ID=34 AND COL_ID =328;


/* Aarti: Bug#1496- To allow query on initial quantity as well as available quantity */
/*UPDATE CATISSUE_TABLE_RELATION (RELATIONSHIP_ID, PARENT_TABLE_ID, CHILD_TABLE_ID) values (118,33,74);*/
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (118, 319, 'Quantity');*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 11 WHERE  RELATIONSHIP_ID=35 AND COL_ID =206;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 10 WHERE  RELATIONSHIP_ID=35 AND COL_ID =207;
/* Aniruddha : Model Changes for Specimen 
UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (35, 208, 'Pathological Status'); */

/*Removed for now...Need to add bewfore beta.*/
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (49, 27, 'Biohazard Type');*/
/*UPDATE CATISSUE_SEARCH_DISPLAY_DATA (RELATIONSHIP_ID, COL_ID, DISPLAY_NAME) VALUES (49, 25, 'Biohazard Name');*/

UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 3 WHERE  RELATIONSHIP_ID=50 AND COL_ID =85;
UPDATE CATISSUE_SEARCH_DISPLAY_DATA SET ATTRIBUTE_ORDER = 4 WHERE  RELATIONSHIP_ID=50 AND COL_ID =86;