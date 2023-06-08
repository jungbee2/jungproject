import React, { useState } from 'react';
import RowItem from './RowItem';
import WriteForm from './WriteForm';

function FiveApp(props) {

    const [board, setBoard] = useState([
        {
            no: 1,
            writer: '홍길동',
            subject: 'hello',
            photo: 's2',
            today: new Date()
        },
        {
            no: 2,
            writer: '김민지',
            subject: 'nice to meet you',
            photo: 's3',
            today: new Date()
        },
        {
            no: 3,
            writer: '최예나',
            subject: 'hungry~~',
            photo: 's4',
            today: new Date()
        }
    ]);

    //데이터 추가하는 함수이벤트
    //board를 바꾸면 렌더링이 다시되면서 추가

    const dataSave = (data) => {
        setBoard(board.concat({

            // writer:data.writer,
            // photo:data.photo,
            // subject:data.subject,

            ...data,
            today: new Date()
        }))
    }

    //데이터삭제
    const dataDelete = (idx) =>{
        setBoard(board.filter((item, i)=>(i!=idx)))

    }

    return (
        <div>
            <h2>FiveApp_부모테이블</h2>

            <WriteForm onSave={dataSave} />

            <table className='table table-bordered' style={{ width: '700px' }}></table>
            <thead>
                <tr style={{ backgroundColor: '#ddd' }}>
                    <th width='100'>이름</th>
                    <th width='100'>사진</th>
                    <th width='250'>제목</th>
                    <th width='150'>날짜</th>
                    <th width='100'>삭제</th>
                </tr>
            </thead>
            <tbody>
                {

                    //데이터 개수 만큼 호출.. 출력은 안됨.. 자식RowItem에서 출력
                    board.map((row, index) => (<RowItem row={row} idx={index} 
                    onDelete={dataDelete}/>))
                }

            </tbody>
        </div>
    );
}

export default FiveApp;