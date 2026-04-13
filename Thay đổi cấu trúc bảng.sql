-- Thêm cột genre vào bảng Books
ALTER TABLE library.Books
ADD genre VARCHAR(255);

-- Đổi tên cột available thành is_available
ALTER TABLE library.Books
RENAME COLUMN available TO is_available;

-- Xóa cột email khỏi bảng Members
ALTER TABLE library.Members
DROP COLUMN email;

-- Xóa bảng OrderDetails khỏi schema sales
DROP TABLE sales.OrderDetails;