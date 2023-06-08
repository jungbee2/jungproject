import React, { useState } from 'react';

function WriteForm({ onSave }) {

    const [writer, setWirter] = useState('');
    const [photo, setPhoto] = useState('s1');
    const [subject, setSubject] = useState('배고파');

    //버튼이벤트
    const addDataEvent = () => {

        //부모 컴포넌트의 onSave이벤트 호출
        onSave({ writer, photo, subject });
    }

    return (
        <div>
            <b>이름: </b>
            <input type='text' style={{ width: '100px' }}
                onChange={(e) => {
                    setWirter(e.target.value);
                }} />

            <b>제목: </b>
            <input type='text' style={{ width: '100px' }}
                onChange={(e) => {
                    setSubject(e.target.value);
                }} />

            <b>이미지: </b>
            <select onChange={(e) => {
                setPhoto(e.target.value);
            }}>

                {
                    //1~10까지를 map으로 돌리기 s1..s10
                    [...new Array(10)].map((a, idx) => (<option>{`s${idx + 1}`}</option>))
                }
            </select>

            <button type='button' className='btn btn-info btn-sm'
                style={{ marginLeft: '20px' }}
                onClick={addDataEvent}>추가</button>
        </div >
    );
}

export default WriteForm;