-- 데이터 삽입

INSERT INTO MEMBER (MEMBER_PK, NAME, AGE, GENDER, PHONE, EMAIL) VALUES
    ('MEMBER_1', '홍길동', '30', '남', '010-1234-5678', 'hong@example.com'),
    ('MEMBER_2', '김영희', '25', '여', '010-9876-5432', 'kim@example.com'),
    ('MEMBER_3', '이철수', '35', '남', '010-2468-1357', 'lee@example.com'),
    ('MEMBER_4', '박민준', '28', '남', '010-8642-9137', 'park@example.com'),
    ('MEMBER_5', '임지영', '32', '여', '010-5793-6241', 'lim@example.com');

INSERT INTO HOBBY (HOBBY_PK, HOBBY_NAME) VALUES
    ('HOBBY_1', '등산'),
    ('HOBBY_2', '요리'),
    ('HOBBY_3', '음악감상'),
    ('HOBBY_4', '수영'),
    ('HOBBY_5', '영화감상'),
    ('HOBBY_6', '자전거'),
    ('HOBBY_7', '요가'),
    ('HOBBY_8', '그림 그리기'),
    ('HOBBY_9', '독서'),
    ('HOBBY_10', '공원 산책');

INSERT INTO ADDRESS (ADDRESS_PK, ADDRESS_NAME) VALUES
    ('ADDR_1', '서울특별시 강남구'),
    ('ADDR_2', '경기도 수원시'),
    ('ADDR_3', '인천광역시 부평구'),
    ('ADDR_4', '대전광역시 서구'),
    ('ADDR_5', '경상북도 포항시 북구');

INSERT INTO MEMBER_INFO (MEMBER_INFO_PK, MEMBER_FK, HOBBY_FK, ADDRESS_FK) VALUES
    ('MI_01', 'MEMBER_1', 'HOBBY_1', 'ADDR_1'),
    ('MI_02', 'MEMBER_1', 'HOBBY_1', 'ADDR_2'),
    ('MI_03', 'MEMBER_1', 'HOBBY_2', 'ADDR_1'),
    ('MI_04', 'MEMBER_1', 'HOBBY_2', 'ADDR_2'),
    ('MI_05', 'MEMBER_2', 'HOBBY_3', 'ADDR_2'),
    ('MI_06', 'MEMBER_2', 'HOBBY_4', 'ADDR_2'),
    ('MI_07', 'MEMBER_3', 'HOBBY_5', 'ADDR_3'),
    ('MI_08', 'MEMBER_3', 'HOBBY_6', 'ADDR_3'),
    ('MI_09', 'MEMBER_4', 'HOBBY_7', 'ADDR_4'),
    ('MI_10', 'MEMBER_4', 'HOBBY_8', 'ADDR_4'),
    ('MI_11', 'MEMBER_5', 'HOBBY_9', 'ADDR_5'),
    ('MI_12', 'MEMBER_5', 'HOBBY_9', 'ADDR_4'),
    ('MI_13', 'MEMBER_5', 'HOBBY_10', 'ADDR_5'),
    ('MI_14', 'MEMBER_5', 'HOBBY_10', 'ADDR_4');