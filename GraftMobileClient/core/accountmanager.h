#ifndef ACCOUNTMANAGER_H
#define ACCOUNTMANAGER_H

#include <QString>

class AccountManager
{
public:
    AccountManager();

    void setNetworkType(int network);
    int networkType() const;

    void setPassword(const QString &passsword);
    QString passsword() const;

    void setAccount(const QByteArray &data);
    QByteArray account() const;

    void setAddress(const QString &a);
    QString address() const;

    void setViewKey(const QString &key);
    QString viewKey() const;

    void setSeed(const QString &seed);
    QString seed() const;

    void save() const;
    void clearData();

private:
    void read();

    QString mPassword;
    QByteArray mAccountData;
    QString mAddress;
    QString mViewKey;
    QString mSeed;
    int mNetworkType;
};

#endif // ACCOUNTMANAGER_H
