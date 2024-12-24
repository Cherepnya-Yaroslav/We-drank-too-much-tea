# Отчет по лабораторной работе #1 (Вариант 1)
**Команда**: Мы выпили слишком много чая 

- Кирилл Абакунов
- Ярослав Черепня
- Егор Тимаков

## Цель работы
- Знакомство с облачными сервисами.
- Понимание уровней абстракции над инфраструктурой в облаке.
- Формирование понимания типов потребления сервисов в сервисной модели.

## Дано: 
1. Слепок данных биллинга от провайдера после небольшой обработки в виде SQL-параметров. Символ % в начале/конце означает, что перед/после него может стоять любой набор символов.
2. Образец итогового соответствия, что желательно получить в конце. В этом же документе  
## Необходимо: 
1. Импортировать файл .csv в Excel или любую другую программу работы с таблицами. Для Excel делается на вкладке Данные – Из текстового / csv файла – выбрать файл, разделитель – точка с запятой.
2. Распределить потребление сервисов по иерархии, чтобы можно было провести анализ от большего к меньшему (напр. От всех вычислительных ресурсов Compute дойти до конкретного типа использования - Выделенной стойка в датацентре Dedicated host usage).
3. Сохранить файл и залить в соответствующую папку на Google Drive.

## Алгоритм работы
1. Импорт данных из CSV-файла.
2. Сопоставление данных с документацией провайдера.
3. Заполнение категорий для анализа потребления сервисов.

## Исходный файл после экспорта в Excel
![telegram-cloud-photo-size-2-5429231686467578428-y](https://github.com/user-attachments/assets/f0858499-85de-4671-a7ce-8f4be2937a9d)


## Сервисы
1. **Amazon Translate**: Предоставляет возможность переводить текст
2. **Amazon Transcribe**: Распознает речь и переводит аудио в текст
3. **Amazon Glacier**: Хранилище для долгосрочного и недорогого хранения данных
4. **Amazon S3**: Удобное облачное место для хранения файлов
5. **Amazon Redshift**: Хранилище данных для анализа больших объемов данных
6. **AWS CodePipeline**: Позваляет автоматизировать CI/CD для разработки
7. **Amazon Machine Learning**: Позволяет строить и использовать модели машинного обучения
8. **Amazon Polly**: Преобразует текст в речь
9. **AWS Directory Service**: Сервис для управления пользователями и настройками в каталоге Active Directory

## Результат
![telegram-cloud-photo-size-2-5429231686467578442-y](https://github.com/user-attachments/assets/25f913ca-ef2f-42fc-9293-008d609e01b1)


## Вывод
Во время выполнения лабораторной работы мы познакомились с AWS, узнали, что там представлено множество готовых решений на все случаи жизни. Мы изучили иерархию сервисов и их распределение по уровням абстракции. Это поможет в будущем принимать более обоснованные решения при проектировании и разработке собственных сервисов.