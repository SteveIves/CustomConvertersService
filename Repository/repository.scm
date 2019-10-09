 
;  SYNERGY DATA LANGUAGE OUTPUT
;
;  GENERATED      : 23-JUL-2019, 16:20:07
;                 : Version 10.3.3g
;  EXPORT OPTIONS : [ALL] 
 
 Structure TESTFILE   DBL ISAM
   Description "Test file"
 
Field ID   Type DECIMAL   Size 6
   Description "ID"
 
Field HISTORY_DATE   Type DATE   Size 8   Stored YYYYMMDD
   Description "History date field"
   Long Description
      "HARMONYCORE_CUSTOM_FIELD_TYPE=RsacHistoryDate;"
      "HARMONYCORE_CUSTOM_FIELD_DATATYPE=string;"
 
Field HISTORY_TIME   Type TIME   Size 6   Stored HHMMSS
   Description "History time field"
   Long Description
      "HARMONYCORE_CUSTOM_FIELD_TYPE=RsacHistoryTime;"
      "HARMONYCORE_CUSTOM_FIELD_DATATYPE=string;"
 
Field HISTORY_PERIOD   Type DECIMAL   Size 2
   Description "History period field"
   Long Description
      "HARMONYCORE_CUSTOM_FIELD_TYPE=RsacHistoryPeriod;"
 
Field YN_BOOLEAN   Type ALPHA   Size 1
   Description "Y/N Boolean Field"
   Long Description
      "HARMONYCORE_CUSTOM_FIELD_TYPE=RsacYnBoolean;"
      "HARMONYCORE_CUSTOM_FIELD_DATATYPE=boolean;"
 
Key ID   ACCESS   Order ASCENDING   Dups NO
   Description "ID"
   Segment FIELD   ID  SegType DECIMAL  SegOrder ASCENDING
 
File TESTFILE   DBL ISAM   "DAT:testfile.ism"
   Description "Test file"
   Assign TESTFILE
 