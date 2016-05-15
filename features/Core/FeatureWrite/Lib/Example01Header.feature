﻿# encoding: utf-8
# language: ru
#Эти две строки (encoding) и (language) не являются обязательными

#Далее идёт заголовок фичи
#В нём указывается название функциональности
#Затем роль (как кто), чего я хочу и для чего это надо
#Например:

Функционал: Исследование языка Gherkin
	Как Правильный разработчик
	Я Хочу Разобраться в том, какие синтаксические конструкции есть в языке Gherkin
	Чтобы Использовать полученные знания на практике

#символ решётки в начале строки означает комментарий
#символ @ означает тег, чтобы можно было тегировать (помечать) сценарии или фичи, например:
@IgnoreOnCIMainBuild
#это может пригодиться потом, например для отбора только некоторых фич из каталога, если их там много
