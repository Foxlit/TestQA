﻿#language: ru

@tree

Функционал: Проверка заполнения поля Организация

Как Тестировщик я хочу
проверить, заполняется ли автоматически поле Организация при выборе соглашения
чтобы проверить, заполняется ли поле Организация из поля соглашения

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка заполнения поля Организация
* Закрытие окон клиентского приложения
	И я закрываю все окна клиентского приложения
* Открытие формы создания заказа клиента
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
* Заполнение поля Соглашение
	И я нажимаю кнопку выбора у поля с именем 'Agreement'
	И в таблице 'List' я перехожу к строке:
		| "Вид"     | "Вид взаиморасчетов" | "Код" | "Наименование"                                                    |
		| "Обычное" | "По документам"      | "1"   | "Соглашение с клиентами (расчет по документам + кредитный лимит)" |
	И я нажимаю на кнопку с именем 'FormChoose'
* Проверка заполнения поля Организация
	Если поле с именем 'Company' заполнено Тогда
		И я показываю на экране текст "Поле Организация заполнено автоматически"
		|'X'             | '800'          |
		|'Y'             | '600'          |
		|'Длительность'  | '5000'         |
		|'Шрифт'         | 'arial'        |
		|'Цвет'          | 'red'          |
		|'Размер'        | '14'           |
	Иначе
		Тогда я нажимаю кнопку выбора у поля с именем 'Company'
		И в таблице 'List' я перехожу к строке:
			| "Код" | "Наименование"           |
			| "1"   | "Собственная компания 1" |
		И я нажимаю на кнопку с именем 'FormChoose'
		И я удаляю переменную 'Организация'
		И я запоминаю значение поля с именем "Company" как "$$Организация$$"
		И я показываю на экране текст "Поле Организация заполнено вручную"
		|'X'             | '800'          |
		|'Y'             | '600'          |
		|'Длительность'  | '5000'         |
		|'Шрифт'         | 'arial'        |
		|'Цвет'          | 'red'          |
		|'Размер'        | '14'           |
	Тогда элемент формы с именем 'Company' стал равен '$$Организация$$'
	И я удаляю переменную 'Организация'
			