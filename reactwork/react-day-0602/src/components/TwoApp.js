import React, { useState } from 'react';

function TwoApp(props) {

    const [board, setBoard] = useState([
        {
            no: 1,
            writer: '홍길동',
            subject: 'hello',
            photo: 's2'
        },
        {
            no: 2,
            writer: '김민지',
            subject: '반가워',
            photo: 's3'
        },
        {
            no: 3,
            writer: '이혜인',
            subject: '배고파!!',
            photo: 's4'
        },
        {
            no: 4,
            writer: '김우빈',
            subject: '내가왔다',
            photo: 's5'
        }

    ]);

    return (
        <div>
            <h2>TwoApp 객체공통변수로 테이블 배열안에 객체 출력</h2>
            <table className='table table-bordered' style={{ width: '500px' }}>
                <caption><b>배열객체출력</b></caption>
                <thead>
                    <tr style={{ backgroundColor: '#ddd' }}>
                        <th width='60'>번호</th>
                        <th width='100'>이미지</th>
                        <th width='260'>제목</th>
                        <th width='120'>작성자</th>
                    </tr>
                </thead>


                <tbody>
                    {
                        board.map((row, index) => (

                            <tr>
                                <td>{row.no}</td>
                                <td><img alt='' src={`../image/${row.photo}.JPG`} style={{ width: '50px' }} /></td>
                                <td>{row.subject}</td>
                                <td>{row.writer}</td>
                            </tr>
                        ))
                    }
                </tbody>
            </table>
        </div>
    );
}

export default TwoApp;