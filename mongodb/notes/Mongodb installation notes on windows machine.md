## Installing Mongodb as a local instance on Windows 10

The following instructions will help to setup mongodb on a Windows 10 machine.

### Requirement

Ensure the fllowing specs are met:

- Windows 10 **64-bit**

Follow this [guideline](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows-unattended/) to install a local instance of mongodb.

- After mongodb is installed, you'll have to add its installation path to the user variable `PATH`. Add the entry `C:\Program Files\MongoDB\Server\4.2\bin` to PATH.
- Create an empty folder structure in the `C` drive like `C:\data\db`. *Note: if this folder structure is not created then you'll ot be able to launch mongodb. Executing the command `mongod` in command prompt will return error like, `exception in initAndListen: NonExistentPath: Data directory C:\data\db\ not found., terminating`* See this [SO post](https://stackoverflow.com/questions/52647724/mongodb-4-data-directory-c-data-db-not-found)

### Configuration

- To specify a data directory other than `c:\data\db`, you can specify a `dbPath`. The dbPath must exist before you start mongod. If it does not exist, create the directory and the permissions so that mongod can read and write data to this path. To specify a dbPath for mongod to use as a data directory, use the --dbpath option. The following invocation will start a mongod instance and store data in the /srv/mongodb path.

    mongod --dbpath /srv/mongodb/
