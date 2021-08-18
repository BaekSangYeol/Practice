--member insert (회원 추가)
insert into member(m_id, m_pass, m_name, m_email, m_birth, m_phone) values('admin', 'admin', '관리자', 'tour@site.com', 'X', '0211112222');
insert into member(m_id, m_pass, m_name, m_email, m_birth, m_phone) values('aaa', '1111', '강민경', 'alsrud@gmail.com', '970101', '01099987778');
insert into member(m_id, m_pass, m_name, m_email, m_birth, m_phone) values('bbb', '2222', '백상열', 'tkdduf@gmail.com', '940202', '01072256875');
insert into member(m_id, m_pass, m_name, m_email, m_birth, m_phone) values('ccc', '3333', '김대현', 'eogus@gmail.com', '980303', '01012665487');
insert into member(m_id, m_pass, m_name, m_email, m_birth, m_phone) values('ddd', '4444', '서건', 'tjrjs@gmail.com', '970404', '01095515243');
insert into member(m_id, m_pass, m_name, m_email, m_birth, m_phone) values('eee', '5555', '최민규', 'alsrb@gmail.com', '920505', '01068751135');
insert into member(m_id, m_pass, m_name, m_email, m_birth, m_phone) values('fff', '6666', '한상길', 'tkdrlf@gmail.com', '980606', '01025487521');


--product insert (상품 등록)  - 관리자ID만 가능
insert into product(p_no, p_name, p_price, p_date, p_qty, p_category, p_image_path, p_detail, p_grade)
values(product_p_no_seq.nextval, '서귀포 패키지', 150000, sysdate, 10, '제주도', 'seogwipo.jpg', '서귀포 여행입니다.', default);
insert into product(p_no, p_name, p_price, p_date, p_qty, p_category, p_image_path, p_detail, p_grade)
values(product_p_no_seq.nextval, '성산일출봉 패키지', 100000, sysdate, 15, '제주도', 'sungsan.jpg', '성산일출봉 위주 여행입니다.', default);
insert into product(p_no, p_name, p_price, p_date, p_qty, p_category, p_image_path, p_detail, p_grade)
values(product_p_no_seq.nextval, '제주도 자유여행 패키지', 80000, sysdate, 10, '제주도', 'jeju.jpg', '제주 자유 여행입니다.', default);
insert into product(p_no, p_name, p_price, p_date, p_qty, p_category, p_image_path, p_detail, p_grade)
values(product_p_no_seq.nextval, '남산타워 패키지', 50000, sysdate, 20, '서울', 'namsantower.jpg', '남산타워 여행입니다.', default);
insert into product(p_no, p_name, p_price, p_date, p_qty, p_category, p_image_path, p_detail, p_grade)
values(product_p_no_seq.nextval, '명동 패키지', 50000, sysdate, 20, '서울', 'myeondong.jpg', '명동 여행입니다.', default);
insert into product(p_no, p_name, p_price, p_date, p_qty, p_category, p_image_path, p_detail, p_grade)
values(product_p_no_seq.nextval, '울릉도 패키지', 300000, sysdate, 10, '경상도', 'ulleungdo.jpg', '울릉도 여행입니다.', default);


--cart insert(장바구니 등록)
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 1, 1, 'aaa');
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 2, 2, 'aaa');
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 1, 3, 'aaa');
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 1, 1, 'ddd');
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 1, 3, 'ddd');
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 1, 6, 'fff');
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 2, 5, 'fff');
insert into cart(c_no, c_qty, p_no, m_id) values(cart_c_no_seq.nextval, 1, 4, 'eee');


--reservation insert (예약(구매하기) 등록)
/* 아이디 : aaa / 예약 완료(구매 완료)*/
insert into reservation(r_no, r_date, r_method, r_price, m_id) values(reservation_r_no_seq.nextval, sysdate-2, '카카오페이', 310000, 'aaa');
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 1, reservation_r_no_seq.currval, 1);
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 2, reservation_r_no_seq.currval, 3);

insert into reservation(r_no, r_date, r_method, r_price, m_id) values(reservation_r_no_seq.nextval, sysdate-1, '신용카드', 150000, 'aaa');
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 1, reservation_r_no_seq.currval, 2);
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 1, reservation_r_no_seq.currval, 5);

insert into reservation(r_no, r_date, r_method, r_price, m_id) values(reservation_r_no_seq.nextval, sysdate, '무통장입금', 50000, 'aaa');
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 1, reservation_r_no_seq.currval, 4);

/* 아이디 : bbb / 예약 완료(구매 완료)*/
insert into reservation(r_no, r_date, r_method, r_price, m_id) values(reservation_r_no_seq.nextval, sysdate-1, '신용카드', 750000, 'bbb');
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 2, reservation_r_no_seq.currval, 6);
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 1, reservation_r_no_seq.currval, 1);

insert into reservation(r_no, r_date, r_method, r_price, m_id) values(reservation_r_no_seq.nextval, sysdate, '카카오페이', 900000, 'bbb');
insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, 3, reservation_r_no_seq.currval, 6);


--qna insert(문의 등록)
/* 아이디 : aaa / 문의등록*/
insert into qna(q_no, q_title, q_content, q_category, q_state, m_id, p_no) values(qna_q_no_seq.nextval, '환불문의합니다.', '어떻게 환불해요 ?', '환불문의', '미완료', 'aaa', 1);
insert into qna(q_no, q_title, q_content, q_category, q_state, m_id, p_no) values(qna_q_no_seq.nextval, '예약변경합니다.', '이날로 변경 하고싶어요.', '취소/변경문의', '완료', 'aaa', 2);
insert into qna(q_no, q_title, q_content, q_category, q_state, m_id, p_no) values(qna_q_no_seq.nextval, '취소문의합니다.', '불쾌해서 취소할래요', '취소/변경문의', '완료', 'aaa', 3);
/* 아이디 : bbb / 문의등록*/
insert into qna(q_no, q_title, q_content, q_category, q_state, m_id, p_no) values(qna_q_no_seq.nextval, '이 상품은 언제 없어지나요?', '상품이 언제까지에요?', '상품문의', '완료', 'bbb', 5);
insert into qna(q_no, q_title, q_content, q_category, q_state, m_id, p_no) values(qna_q_no_seq.nextval, '취소함', '시간이 안되서 취소 부탁드려요.', '취소/변경문의', '완료', 'bbb', 6);


--review insert(상품 리뷰 등록)
insert into review(rv_no, rv_title, rv_content, rv_date, rv_grade, m_id, p_no) values(review_rv_no_seq.nextval, '좋은 여행이었습니다.', '가족들끼리 여행갔는데 좋네요 추천합니다.', sysdate, 5, 'aaa', 1);
insert into review(rv_no, rv_title, rv_content, rv_date, rv_grade, m_id, p_no) values(review_rv_no_seq.nextval, '별로', '두번 다시는 안갑니다.', sysdate, 1, 'bbb', 2);
insert into review(rv_no, rv_title, rv_content, rv_date, rv_grade, m_id, p_no) values(review_rv_no_seq.nextval, '좀 비싸요', '좀 더 저렴하면 다시 갈 마음은 있습니다.', sysdate, 4, 'bbb', 4);
insert into review(rv_no, rv_title, rv_content, rv_date, rv_grade, m_id, p_no) values(review_rv_no_seq.nextval, '그저그럼', '그저그랬습니다.', sysdate, 3, 'ccc', 6);


--faq insert(자주찾는 질문 등록) - 관리자 ID만 가능
insert into faq(f_no, f_question, f_answer, m_id) values(faq_f_no_seq.nextval, '비밀번호는 어떻게 찾나요 ?', '알아서 찾으세요.', 'admin');
insert into faq(f_no, f_question, f_answer, m_id) values(faq_f_no_seq.nextval, '아이디는 어떻게 찾나요 ?', '알아서 찾으세요.', 'admin');
insert into faq(f_no, f_question, f_answer, m_id) values(faq_f_no_seq.nextval, '환불은 어떻게 하나요 ?', '알아서 하세요.', 'admin');