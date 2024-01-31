INSERT INTO t1(b,c) VALUES(5,99);

INSERT INTO t1(b,c) VALUES(5,99) RETURNING b,c,a,rowid;

INSERT INTO t1 DEFAULT VALUES RETURNING *;

INSERT INTO t1 SELECT * FROM t2 RETURNING *;

INSERT INTO t1 VALUES(3) RETURNING a, (SELECT c FROM t2 WHERE t1.a=t2.b) AS x;

INSERT INTO t4(a,b,c) VALUES(1,22,33)
  ON CONFLICT(a) DO UPDATE SET b=44;

INSERT INTO t4(a,b,c) VALUES(1,22,33)
  ON CONFLICT(a) DO UPDATE SET b=44
  RETURNING *;

INSERT INTO t4(a,b,c) VALUES(2,3,4),(4,5,6),(5,6,7)
  ON CONFLICT(a) DO UPDATE SET b=100
  RETURNING *, '|';

UPDATE t1 SET c='bellum' WHERE c='pax';

UPDATE t1 SET c='bellum' WHERE c='pax' RETURNING rowid, b, '|';

UPDATE t2 SET b='123' WHERE b='abc' RETURNING (SELECT b FROM t1);

UPDATE t2 SET b='123' WHERE b='abc' RETURNING (SELECT b FROM t1);

UPDATE t2 SET b='123' WHERE b='abc' RETURNING b;

UPDATE t1 SET id=id+y FROM t2 WHERE t1.id=t2.x RETURNING *, '|';

UPDATE t1 SET b=b+y FROM t2 WHERE t2.x=t1.a RETURNING t1.b;

UPDATE t1 AS alias SET b=alias.b+1000 RETURNING t1.b;

DELETE FROM t1 WHERE c='bellum' RETURNING rowid, *, '|';

DELETE FROM t1 RETURNING *;

DELETE FROM t3 WHERE f>100 RETURNING 'D', e, f;

DELETE FROM t1 RETURNING x, affinity(x);
