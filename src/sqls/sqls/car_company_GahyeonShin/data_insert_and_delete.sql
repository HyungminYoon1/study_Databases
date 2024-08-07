
-- 데이터 넣기
INSERT INTO COMPANY VALUES
    ('COM_01', '현대'),
    ('COM_02', '기아'),
    ('COM_03', '쉐보레'),
    ('COM_04', 'BMW'),
    ('COM_05', '벤츠');

INSERT INTO CAR_COMPANY_INFO_YEAR VALUES
    ('CAR_1', 'COMPANY_1', '소나타', '2020'),
    ('CAR_2', 'COMPANY_2', '쏘렌토', '2018'),
    ('CAR_3', 'COMPANY_3', '카마로', '2019'),
    ('CAR_4', 'COMPANY_4', '3시리즈', '2017'),
    ('CAR_5', 'COMPANY_5', 'E클래스', '2021'),
    ('CAR_6', 'COMPANY_3', '카마로', '2021'),
    ('CAR_7', 'COMPANY_1', '소나타', '2018');

INSERT INTO OPTIONS VALUES
    ('OP_01', '네비게이션'),
    ('OP_02', '후방카메라'),
    ('OP_03', '가죽시트'),
    ('OP_04', '스마트키'),
    ('OP_05', '크루즈컨트롤'),
    ('OP_06', '블루투스'),
    ('OP_07', '후방감지센서'),
    ('OP_08', '헤드업디스플레이'),
    ('OP_09', '전자식 메모리 시트'),
    ('OP_10', '어댑티브 크루즈컨트롤');

INSERT INTO YEARS VALUES
    ('YEAR_01', '2017'),
    ('YEAR_02', '2018'),
    ('YEAR_03', '2019'),
    ('YEAR_04', '2020'),
    ('YEAR_05', '2021'),