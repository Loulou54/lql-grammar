CREATE OR REPLACE EDITIONABLE FUNCTION MY_FUNC RETURN VARCHAR2
DEFAULT COLLATION USING_NLS_COMP
AGGREGATE USING MY_AGG_FUNC;
