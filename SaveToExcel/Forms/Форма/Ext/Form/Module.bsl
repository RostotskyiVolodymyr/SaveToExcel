﻿
&НаКлиенте
Процедура СохранитьДвоичныеДанныеВExcel(ДвоичныеДанные)
	
	ОписаниеОповещения = Новый ОписаниеОповещения("СохранитьШаблонПослеВыбора", ЭтотОбъект, ДвоичныеДанные);
	ДиалогСохраненияФайла = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.Сохранение);
	ДиалогСохраненияФайла.ПолноеИмяФайла = "Шаблон.xlsx";
	ДиалогСохраненияФайла.Фильтр = "Лист Microsoft Excel|*.xlsx";
	ДиалогСохраненияФайла.Показать(ОписаниеОповещения);
	
КонецПроцедуры

&НаКлиенте
Процедура СохранитьШаблонПослеВыбора(ВыбранныеФайлы, ДвоичныеДанные = Неопределено) Экспорт
	
	Если ВыбранныеФайлы <> Неопределено  И ВыбранныеФайлы.Количество() > 0 Тогда
		ДвоичныеДанные.Записать(ВыбранныеФайлы[0]);
	КонецЕсли;
	
КонецПроцедуры