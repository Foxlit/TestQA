﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>

* Проверка видимости элементов
	Если элемент формы с именем "Company" присутствует на форме тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
* Сверка с макетами когда не совпадают строки
	Если Табличный документ "Result" равен макету "ПроверкаПоШаблону1" тогда
	ИначеЕсли Табличный документ "Result" равен макету "ПроверкаПоШаблону2" тогда
	Иначе
		Тогда я вызываю исключение "Макет не совпал с эталоном"
* Проверка в различном окружении
	Если это Linux Тогда
	Если это web клиент Тогда
* Стабилизация тестов
	Если появилось окно с заголовком "Соглашение (создание)" в течение 10 секунд Тогда
		И я закрываю текущее окно
		