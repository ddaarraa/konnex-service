import { INestApplication, Injectable, OnModuleDestroy, OnModuleInit } from '@nestjs/common';
import { PrismaPg } from '@prisma/adapter-pg';
import { env } from 'process';
import { PrismaClient } from 'src/generated/prisma/client';


@Injectable()
export class PrismaService extends PrismaClient {
    constructor(){
            const databae_url : string = env.DATABASE_URL
            const adapter = new PrismaPg(databae_url)
            super({adapter})
    }
    onModuleDestroy() {
        throw new Error('Method not implemented.');
    }
}
