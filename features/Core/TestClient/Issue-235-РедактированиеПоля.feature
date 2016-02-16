# encoding: utf-8
# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds



Функционал: Проверка редактирования поля ТЧ

Как разработчик
Я хочу чтобы поля ТЧ редактировались корректно
Чтобы генератор фич из воздуха создавал корректный текст Gherkin

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария> 

	Когда я удаляю все элементы Справочника "Справочник1"
	Когда я создаю fixtures по макету "Макет"
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	И     открылось окно "Справочник1"
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Тестовый Элемент * (Справочник1)"
	И     В форме "Тестовый Элемент * (Справочник1)" в таблице "ТабличнаяЧасть1" я перехожу к строке:
	| 'N' | 'Реквизит число' | 'Реквизит строка' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' | 'Реквизит справочник' | 'Реквизит булево' |
	| '2' | '56,78'          | '111'      | '11.09.1983'    | 'ТестовыйЭлемент21'                         | 'ТестовыйЭлемент21'   | 'Да'              |
	И     В форме "Тестовый Элемент * (Справочник1)" в ТЧ "ТабличнаяЧасть1" я выбираю текущую строку
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит строка" я ввожу текст "222"
	И     В форме "Тестовый Элемент * (Справочник1)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки
	Тогда таблица формы с именем "ТабличнаяЧасть1" содержит изменения:
		| 'Реквизит строка' |
		| 'ТестСтрока'      |
		| '222'             |
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"

