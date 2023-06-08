import React from 'react';

function RowItem({ row, idx, onDelete }) {

    console.dir();


    //삭제이벤트
    const btnDelete = () => {
    
        onDelete(idx); //부모가 props로 보낸 이벤트 호출
    };

    return (
        <tr>
            <td>{row.writer}</td>
            <td><img src={`../image/${row.photo}.JPG`} style={{ width: '40px', height: '40px' }} alt='사진' /></td>
            <td>{row.subject}</td>
            <td>{row.today.toLocaleDateString('ko-kr')}</td>
            <td><button type='button' className='btn btn-danger btn-xs'
            onClick={btnDelete}>삭제</button></td>
        </tr>
    );
}

export default RowItem;