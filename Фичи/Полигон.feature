﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И я закрываю все окна клиентского приложения

И В командном интерфейсе я выбираю "Продажи" "Заказы клиентов"
Тогда открылось окно "Заказы клиентов"
И в таблице 'Список' я нажимаю на кнопку с именем 'СписокСоздать'
Тогда открылось окно "Заказ клиента (создание)"
И я нажимаю кнопку выбора у поля с именем 'Партнер'
Тогда открылось окно "Партнеры (Клиенты)"
И в таблице 'Список' я перехожу к строке:
	| "Бизнес-регион" | "Дата регистрации" | "Наименование"         | "Основной менеджер"         |
	| "Москва"        | "07.06.2010"       | "Все для дома Магазин" | "Петров Станислав Игоревич" |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И я нажимаю кнопку выбора у поля с именем 'Склад'
Тогда открылось окно "Склады и магазины"
И в таблице 'Список' я перехожу к строке:
	| "Наименование"   |
	| "Оптовые склады" |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И я перехожу к закладке с именем 'ГруппаТовары'
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыНоменклатура'
Тогда открылось окно "Номенклатура"
И в таблице 'СписокРасширенныйПоискНоменклатура' я перехожу к строке:
	| "Артикул " | "Наименование"       |
	| "Арт-7777" | "Барбарис (конфеты)" |
И в таблице 'СписокРасширенныйПоискНоменклатура' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличествоУпаковок'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "5,000"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыСклад'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыСклад' я выбираю по строке "ц"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыВариантОбеспечения'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВариантОбеспечения' я выбираю точное значение "Резервировать на складе (все)"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыНоменклатура'
Тогда открылось окно "Номенклатура"
И в таблице 'СписокРасширенныйПоискНоменклатура' я перехожу к строке:
	| "Артикул " | "Наименование"          |
	| "ВН-900"   | "Вентилятор настольный" |
И в таблице 'СписокРасширенныйПоискНоменклатура' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыСклад'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыСклад' я выбираю по строке "ц"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличествоУпаковок'
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "10,000"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыНоменклатура'
Тогда открылось окно "Номенклатура"
И в таблице 'СписокРасширенныйПоискНоменклатура' я перехожу к строке:
	| "Артикул " | "Наименование" |
	| "Л-90"     | "Лимонад"      |
И в таблице 'СписокРасширенныйПоискНоменклатура' я выбираю текущую строку
Тогда открылось окно "Заказ клиента (создание) *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыСклад'
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыСклад' я выбираю по строке "ц"
И я перехожу к следующему реквизиту
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "10,000"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я перехожу к строке:
	| "N" | "Вид цены" | "Действия"      | "Доступно" | "Количество" | "НДС"      | "Номенклатура"          | "Обособленно" | "Отменено" | "Серия"                  | "Склад"             | "Содержание"                     | "Ставка НДС" | "Сумма"    | "Сумма с НДС" | "Упаковка" | "Характеристика"                   | "Цена"   |
	| "2" | "Оптовая"  | "К обеспечению" | "1,000"    | "10,000"     | "1 640,00" | "Вентилятор настольный" | "Нет"         | "Нет"      | "<серия не указывается>" | "Центральный склад" | "<для работ, оформляемых актом>" | "20%"        | "9 840,00" | "9 840"       | "шт"       | "<характеристики не используются>" | "984,00" |
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст "1,000"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыВариантОбеспечения'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВариантОбеспечения' я выбираю точное значение "Отгрузить (все)"
Тогда открылось окно "Выбор действия"
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно "Заказ клиента (создание) *"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я перехожу к строке:
	| "N" | "Вид цены" | "Действия"      | "Доступно" | "Количество" | "НДС"   | "Номенклатура" | "Обособленно" | "Отменено" | "Серия"                  | "Склад"             | "Содержание"                     | "Ставка НДС" | "Сумма"  | "Сумма с НДС" | "Упаковка" | "Характеристика"                   | "Цена"  |
	| "3" | "Оптовая"  | "К обеспечению" | "800,000"  | "10,000"     | "90,00" | "Лимонад"      | "Нет"         | "Нет"      | "<серия не указывается>" | "Центральный склад" | "<для работ, оформляемых актом>" | "20%"        | "540,00" | "540"         | "шт"       | "<характеристики не используются>" | "54,00" |
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВариантОбеспечения' я выбираю точное значение "Отгрузить (все)"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я перехожу к строке:
	| "N" | "Вид цены" | "Действия"                | "Количество" | "НДС"   | "Номенклатура"       | "Обособленно" | "Отменено" | "Серия"                  | "Склад"             | "Содержание"                     | "Ставка НДС" | "Сумма"  | "Сумма с НДС" | "Упаковка" | "Характеристика"                   | "Цена"  |
	| "1" | "Оптовая"  | "Резервировать на складе" | "5,000"      | "22,00" | "Барбарис (конфеты)" | "Нет"         | "Нет"      | "<серия не указывается>" | "Центральный склад" | "<для работ, оформляемых актом>" | "20%"        | "132,00" | "132"         | "кг"       | "<характеристики не используются>" | "26,40" |
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' из выпадающего списка с именем 'ТоварыВариантОбеспечения' я выбираю точное значение "Отгрузить (все)"
И в таблице 'Товары' я завершаю редактирование строки
И я перехожу к закладке с именем 'ГруппаОсновное'
И я нажимаю на гиперссылку с именем 'ДекорацияЭтапыОплаты'
Тогда открылось окно "Правила оплаты"
И в таблице 'ЭтапыГрафикаОплаты' я устанавливаю сортировку по колонке 'Срок (дн)'
И в таблице 'ЭтапыГрафикаОплаты' я нажимаю на кнопку с именем 'ЭтапыГрафикаОплатыДобавить'
И в таблице 'ЭтапыГрафикаОплаты' я активизирую поле с именем 'ЭтапыОплатыВариантОтсчета'
И в таблице 'ЭтапыГрафикаОплаты' из выпадающего списка с именем 'ЭтапыОплатыВариантОтсчета' я выбираю точное значение "до даты отгрузки"
И я перехожу к следующему реквизиту
И в таблице 'ЭтапыГрафикаОплаты' я активизирую поле с именем 'ЭтапыОплатыПроцентПлатежа'
И в таблице 'ЭтапыГрафикаОплаты' в поле с именем 'ЭтапыОплатыПроцентПлатежа' я ввожу текст "100,00"
И я нажимаю на кнопку с именем 'ФормаОК'
и я нажимаю на кнопку "Записать"
* Проверка заполнения табличной части 
	Тогда таблица 'Товары' содержит строки:
		| 'N' | 'Упаковка' | 'Номенклатура клиента' | 'Номенклатура'          | 'Характеристика'                   | 'Обособленно' | 'Склад'             | 'Подразделение' | 'Серия'                  | 'Отменено по причине' | 'Содержание'                     | 'Доступно' | 'Цена'   | 'Количество' | 'Сумма авт.' | 'Сумма'  | 'Ставка НДС' | 'НДС'    | 'Вид цены' | 'Сумма с НДС' | 'Отменено' |
		| '1' | 'кг'       | ''                     | 'Барбарис (конфеты)'    | '<характеристики не используются>' | 'Нет'         | 'Центральный склад' | ''              | '<серия не указывается>' | ''                    | '<для работ, оформляемых актом>' | ''         | '26,40'  | '5,000'      | ''           | '132,00' | '20%'        | '22,00'  | 'Оптовая'  | '132'         | 'Нет'      |
		| '2' | 'шт'       | ''                     | 'Вентилятор настольный' | '<характеристики не используются>' | 'Нет'         | 'Центральный склад' | ''              | '<серия не указывается>' | ''                    | '<для работ, оформляемых актом>' | ''         | '984,00' | '1,000'      | ''           | '984,00' | '20%'        | '164,00' | 'Оптовая'  | '984'         | 'Нет'      |
		| '3' | 'шт'       | ''                     | 'Лимонад'               | '<характеристики не используются>' | 'Нет'         | 'Центральный склад' | ''              | '<серия не указывается>' | ''                    | '<для работ, оформляемых актом>' | ''         | '54,00'  | '10,000'     | ''           | '540,00' | '20%'        | '90,00'  | 'Оптовая'  | '540'         | 'Нет'      |
		| '4' | 'шт'       | ''                     | 'Бутылка '              | '<характеристики не используются>' | 'Нет'         | 'Центральный склад' | ''              | '<серия не указывается>' | ''                    | '<для работ, оформляемых актом>' | '10,000'   | '2,50'   | '10,000'     | ''           | '25,00'  | '20%'        | '4,17'   | 'Оптовая'  | '25'          | 'Нет'      |
	
				
* Номер
	и я запоминаю значение поля "Номер" как "$Номер$"

И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

Тогда открылось окно "1С:Предприятие"
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно "Подбор многооборотной тары *"
И я нажимаю на кнопку с именем 'Завершить'
И я жду закрытия окна "Заказ клиента (создание) *" в течение 20 секунд