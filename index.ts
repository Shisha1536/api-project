import { Express } from "express";
import { connectDb } from "./src/services/db";
import { initServer } from "./src/services/server";
import { commentsRouter } from "./src/api/comments-api";
import { ICommentEntity } from "./types";
import { productsRouter } from "./src/api/products-api";

export let server: Express;
export let client: ICommentEntity;

const ROOT_PATH = "/api";

async function launchApplication() {
    server = initServer();
    client = await connectDb();
    initRouter();
}
function initRouter() {
    server.use(`${ROOT_PATH}/comments`, commentsRouter);
    server.use(`${ROOT_PATH}/products`, productsRouter);
}

launchApplication();