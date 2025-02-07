// Найти или создать пользователя.
// 
// Параметры:
//  ПользовательИБ - ПользователиИнформационнойБазы - 
//  ДопПараметры - Структура:
//  *ЭлектроннаяПочта - Строка
//  *Пароль - Строка
// 
// Возвращаемое значение:
//  СправочникСсылка.Пользователи - Найти или созать пользователя
Функция НайтиИлиСоздатьПользователя(ПользовательИБ, ДопПараметры = Неопределено) Экспорт	
	ПользовательСсылка = НайтиПоНаименованию(ПользовательИБ.Имя);
	Если ПользовательСсылка.Пустая() Тогда
		ПользовательОбъект = СоздатьЭлемент();
		ПользовательОбъект.Наименование = ПользовательИБ.Имя;
		ПользовательОбъект.ПолноеИмя 	= ПользовательИБ.ПолноеИмя;
		
		ПользовательОбъект.ЗаполнитьНаборРолей(ПользовательИБ);
		ПользовательОбъект.Записать();
		
		ПользовательСсылка = ПользовательОбъект.Ссылка;		
	КонецЕсли;
	
	Возврат ПользовательСсылка;		
КонецФункции
