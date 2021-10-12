#include "Program.h"
#include <QtWidgets/QApplication>
#include <QFontDatabase>

int main(int argc, char* argv[])
{
    QApplication a(argc, argv);
    Program w;
    w.show();
    return a.exec();
}


Program::Program(QWidget *parent)
    : QMainWindow(parent)
{
    ui.setupUi(this);
   
    QFontDatabase::addApplicationFont(":/Program/Roboto-Bold.ttf");//Roboto-Bold Roboto-Light
    QFont font = QFont("Roboto", 150, 1);
    ui.pushButton->setFont(font);
}
