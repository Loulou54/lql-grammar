SELECT 1 FROM DUAL WHERE 1 = ANY(1, 2, 3);
SELECT 1 FROM DUAL WHERE 1 = ANY(1, 2, 3) AND 1 = 1;
SELECT 1 FROM DUAL WHERE 1 = ANY(1, 2, 3) OR 1 = 1;
SELECT 1 FROM DUAL WHERE 1 = ANY(1, 2, 3) AND 2 = ANY(2, 3);