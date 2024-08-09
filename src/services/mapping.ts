import { title } from "process";
import { IComment, ICommentEntity, IProduct } from "../../types";
import { describe } from "node:test";

export const mapCommentEntity = ({
    comment_id, product_id, ...rest
}: ICommentEntity): IComment => {
    return {
        id: comment_id,
        productId: product_id,
        ...rest
    }
}
export const mapCommentsEntity = (data: ICommentEntity[]): IComment[] => {
    return data.map(mapCommentEntity);
}