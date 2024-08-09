import { IComment, ICommentEntity, IProduct } from "../../types";

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