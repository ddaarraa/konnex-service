-- CreateTable
CREATE TABLE "UserCore" (
    "userId" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "UserCore_pkey" PRIMARY KEY ("userId")
);

-- CreateTable
CREATE TABLE "UserMetaData" (
    "userId" INTEGER NOT NULL,
    "fullname" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    "address" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "date_joined" TEXT NOT NULL,

    CONSTRAINT "UserMetaData_pkey" PRIMARY KEY ("userId")
);

-- CreateIndex
CREATE UNIQUE INDEX "UserCore_username_key" ON "UserCore"("username");

-- AddForeignKey
ALTER TABLE "UserMetaData" ADD CONSTRAINT "UserMetaData_userId_fkey" FOREIGN KEY ("userId") REFERENCES "UserCore"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;
