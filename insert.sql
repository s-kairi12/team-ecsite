alter table mst_category auto_increment = 1;
insert into mst_category (category_name, category_description, created_at, updated_at) values ('事務用品', 'ファイル、文房具などの小物、事務用品はこちら。', now(), now()); 
insert into mst_category (category_name, category_description, created_at, updated_at) values ('オフィス用家具', 'オフィス向けのデスクや椅子などを取り扱っています。', now(), now()); 
insert into mst_category (category_name, category_description, created_at, updated_at) values ('サービス', '会議室やプリンターのレンタルサービスがご利用できます。', now(), now()); 

alter table mst_product auto_increment = 1;
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company, created_at, updated_at)
 values ('ハサミ', 'はさみ', '１０枚重ねの書類も楽々に裁断できる切れ味抜群なハサミです。素材に特殊な金属の配合を施し、切れ味が長続きするように実現しました。', 1, 300, '/img/scissors.jpg', '2020/07/08', 'Hikino株式会社', now(), now());
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company, created_at, updated_at)
 values ('ホッチキス', 'ほっちきす', '少しの力で書類を留めることができるように設計された、ユニバーサルデザインを採用したホッチキスです。針による事故を防ぐための安全装置も備えています。', 1, 500, '/img/stapler.jpg', '2020/07/08', 'Hikino株式会社', now(), now());
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company, created_at, updated_at)
 values ('バインダー', 'ばいんだー', 'コピー紙を最大１０００枚まで収納できる、３冊セットのバインダーです。カラフルな３色で書類をわかりやすくまとめます。自立して立てることもできるので、収納場所に困りません。', 1, 800, '/img/binder.jpg', '2020/07/08', 'Hikino株式会社', now(), now());
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company, created_at, updated_at)
 values ('作業用デスク', 'さぎょうようですく', '高級素材のマホガニーを贅沢に使用した大型のオフィス用デスクです。その上質な質感は最高のオフィスタイムを約束します。\n・寸法(mm) 3000×1000×700\n・耐用重量 300kg', 2, 20000, '/img/desk.jpg', '2020/07/08', '末永家具店', now(), now());
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company, created_at, updated_at)
 values ('作業用いす', 'さぎょうよういす', 'クッション機能抜群のキャスター付き椅子です。絶妙な柔らかさで、長時間作業による疲れを軽減します。さらに付属のレバーで昇降可能でお好みの高さで利用可能です。', 2, 8000, '/img/chair.jpg', '2020/07/08', '末永家具店', now(), now());
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company, created_at, updated_at)
 values ('貸会議室(1時間)', 'かしかいぎしつ（１じかん）', '白を基調とした日当たり抜群の会議室です。駅から徒歩3分の好立地で、地域低価格を実現しました。様々な用途でご利用いただけます。\n・最大収容人数１００人\n・テレビモニター、マイク貸し出し\n・プロジェクター有料\n1時間につき2000円で会議室をご利用できます。\n※購入個数には利用したい時間数をご入力ください（購入個数:1＝1時間）', 3, 2000, '/img/room.jpg', '', 'ヨシタケオフィスサービス', now(), now());
insert into mst_product (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company, created_at, updated_at)
 values ('コピー機レンタル(1日）', 'こぴーきれんたる（１にち）', 'オフィスの雰囲気を壊さない人気のモデルです。また大きさや形もコンパクトなので設置場所に困らないのも魅力です。\n1日につき500円でコピー機1台をレンタル利用できます。\n※購入個数には利用したい日数をご入力ください（購入個数:1＝1日）', 3, 500, '/img/printer.jpg', '', 'ヨシタケオフィスサービス', now(), now());