﻿
Процедура ПередЗаписью(Отказ)
	
	Если ДополнительныеСвойства.Свойство("РаскидатьПоРегионам") Тогда
		Если ЗначениеЗаполнено(ФиасКодРегиона) Тогда
			лРегион = КэшФункцииВызов.ПолучитьРегион(ФиасКодРегиона,РегионСТипом);
		КонецЕсли; 

		Если ЗначениеЗаполнено(ФиасКодРайонаВРегионе)  Тогда
			лРайонГородРегиона = КэшФункцииВызов.ПолучитьРайонРегиона(лРегион,ФиасКодРайонаВРегионе,РайонВРегионеСТипом);	
		ИначеЕсли ЗначениеЗаполнено(ФиасКодГорода) Тогда 
			лРайонГородРегиона = КэшФункцииВызов.ПолучитьГородРегиона(лРегион,ФиасКодГорода,ГородСТипом);	
		Иначе
			лРайонГородРегиона = Неопределено;
		КонецЕсли; 

		Родитель = лРайонГородРегиона;
		
	КонецЕсли; 
КонецПроцедуры
