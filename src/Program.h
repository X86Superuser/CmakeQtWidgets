#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_Program.h"

class Program : public QMainWindow
{
    Q_OBJECT

public:
    Program(QWidget *parent = Q_NULLPTR);

private:
    Ui::ProgramClass ui;
};
