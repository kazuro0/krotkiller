#include "helper.h"
#include <QVector>


helper::helper(QObject *parent) : QObject(parent)
{

}

int helper::randx(){
    QVector<int> cx = {
        139, 260, 385
    };
    int resx = cx[rand()%3];
    return resx;
};

int helper::randy(){
    QVector<int> cy = {
        79, 202, 325
    };
    int resy = cy[rand()%3];
    return resy;
};


