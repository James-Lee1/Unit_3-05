# coding: utf-8

import ui

def calculate_button_touch_up_inside(sender):

    counter = 1

    # Input

    number = int(view['number_textbox'].text)
    view['validity_label'].text = ''
    answer = 1
    
    # Makes sure number cannot be negative
    if number < 0:
        view['validity_label'].text = 'Please choose valid option'
        return

    if number == 0:
        view['validity_label'].text = 'Please choose valid option'
        return

    number = int(number) + 1

    # Output

    while (number != counter):
        answer = answer * counter
        counter = counter + 1

    # Output

    view['answer_label'].text =  'The factorial is ' + str(answer)

view = ui.load_view()
view.present('full_screen')
