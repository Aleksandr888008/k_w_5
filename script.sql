�������� ������ ���� �������� � ���������� �������� � ������ ��������
query = SELECT employer, COUNT(*) AS vacancies_count
        FROM vacancies
        GROUP BY employer

�������� ������ ���� �������� � ��������� �������� ��������, �������� ��������, �������� � ������ �� ��������
query = SELECT * from vacancies

�������� ������� �������� �� ���������
query = SELECT AVG(salary) AS avg_salary
        FROM vacancies
        WHERE salary IS NOT NULL

�������� ������ ���� ��������, � ������� �������� ���� ������� �� ���� ���������
query = SELECT *
        FROM vacancies
        WHERE salary > (SELECT AVG(salary) FROM vacancies)
        ORDER BY salary DESC

�������� ������ ���� ��������, � �������� ������� ���������� ���������� � ����� �����
query = SELECT name
        FROM vacancies
        WHERE name ILIKE '%{word}%'
        ORDER BY name