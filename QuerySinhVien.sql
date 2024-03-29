-- SU DUNG CSDL
USE QLSV GO

-- IN RA TEN CAC SV
SELECT TEN FROM SVIEN;

-- IN RA CAC MON HOC VA SO TIN CHI
SELECT TENMH, TINCHI FROM MHOC;

-- KET QUA HOC TAP SV MS 8
SELECT MAKH FROM KQUA WHERE MASV = 8;

-- MON HOC TRUOC
SELECT MAMH FROM DKIEN WHERE MAMH_TRUOC = 'COSC3320';

-- MON HOC SAU
SELECT MAMH_TRUOC FROM DKIEN WHERE MAMH = 'COSC3320';

-- DANH SACH SINH VIEN THUOC KHOA PHU TRACH MON TOAN
SELECT * FROM SVIEN WHERE KHOA = (SELECT KHOA FROM MHOC WHERE MAMH = 'MATH2410')


-- CAP NHAT SINH VIEN
UPDATE SVIEN SET NAM = 2 WHERE TEN = 'Son'

-- XOA DU LIEU DA NHAP VAO
TRUNCATE SVIEN;
TRUNCATE MHOC;
TRUNCATE DKIEN;
TRUNCATE K_HOC;
TRUNCATE KQUA;

-- XOA TAT CA CAC BANG DA TAO
DROP TABLE SVIEN;
DROP TABLE MHOC;
DROP TABLE DKIEN;
DROP TABLE K_HOC;
DROP TABLE KQUA;

-- DANH SACH SINH VIEN VA MON HOC KQ > 7 
-- SELECT * FROM SVIEN WHERE MASV IN (SELECT MASV FROM KQUA WHERE DIEM > 7)
-- SELECT * FROM MHOC WHERE MAMH IN (SELECT MAMH FROM KQUA WHERE DIEM > 7)