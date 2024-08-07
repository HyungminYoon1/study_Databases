
-- 데이터 넣기
INSERT INTO COMPANY VALUES
    ('COMPANY_1', '현대'),
    ('COMPANY_2', '기아'),
    ('COMPANY_3', '쉐보레'),
    ('COMPANY_4', 'BMW'),
    ('COMPANY_5', '벤츠');

INSERT INTO CAR_COMPANY_INFO_YEAR VALUES
    ('CAR_1', 'COMPANY_1', '소나타', '2020'),
    ('CAR_2', 'COMPANY_2', '쏘렌토', '2018'),
    ('CAR_3', 'COMPANY_3', '카마로', '2019'),
    ('CAR_4', 'COMPANY_4', '3시리즈', '2017'),
    ('CAR_5', 'COMPANY_5', 'E클래스', '2021'),
    ('CAR_6', 'COMPANY_3', '카마로', '2021'),
    ('CAR_7', 'COMPANY_1', '소나타', '2018');

INSERT INTO OPTIONS VALUES
    ('OPT_01', 'CAR_1', '네비게이션'),
    ('OPT_02', 'CAR_1', '후방카메라'),
    ('OPT_03', 'CAR_2', '가죽시트'),
    ('OPT_04', 'CAR_2', '스마트키'),
    ('OPT_05', 'CAR_3', '크루즈컨트롤'),
    ('OPT_06', 'CAR_3', '블루투스'),
    ('OPT_07', 'CAR_4', '후방감지센서'),
    ('OPT_08', 'CAR_4', '헤드업디스플레이'),
    ('OPT_09', 'CAR_5', '전자식 메모리 시트'),
    ('OPT_10', 'CAR_5', '어댑티브 크루즈컨트롤');

INSERT INTO YEARS VALUES
    ('YEAR_01', '2020'),
    ('YEAR_02', '2018'),
    ('YEAR_03', '2019'),
    ('YEAR_04', '2017'),
    ('YEAR_05', '2021'),