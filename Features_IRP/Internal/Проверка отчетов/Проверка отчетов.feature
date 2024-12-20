﻿#language: ru

@tree
@Отчеты

Функционал: тестирование отчетов

Как Тестировщик я хочу
тестировать отчеты
чтобы чтобы проверить, что у пользователя не возникнет проблем

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0910 подготовительный сценарий (тестирование отчетов)
	Когда экспорт основных данных
	Когда экспорт документов закупок
	И я выполняю код встроенного языка на сервере
	| 'Документы.PurchaseOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |
	| 'Документы.PurchaseOrder.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |
	| 'Документы.PurchaseOrder.НайтиПоНомеру(3).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |
	| 'Документы.PurchaseInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
	| 'Документы.PurchaseInvoice.НайтиПоНомеру(2).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
	
Сценарий: _0902 проверка отчета Информация по номенклатуре
* Закрытие окон клиентского приложения
	И я закрываю все окна клиентского приложения
* Открытие отчета D0010 Информация по товарам
	И В командном интерфейсе я выбираю "Отчеты" "D0010 Информация по товарам"
	Тогда открылось окно "D0010 Информация по товарам"
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано табличный документ "Result" равен макету "ИнформацияПоТоварам1" по шаблону
	
Сценарий: _0903 проверка отчета по Закупкам
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Отчеты" "D1001 Закупки"
	Тогда открылось окно "D1001 Закупки"
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R8C4" в течение 20 секунд
	Дано табличный документ "Result" равен макету "Закупки1" по шаблону