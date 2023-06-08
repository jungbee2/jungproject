import React, { useState } from 'react';
import Alert from '@mui/material/Alert';

function SixApp(props) {

    const [names, setNames] = useState(['최정운', '이시연', '장현준', '김태형', '안채원', '강재훈']);
    //추가할 이름
    const [irum, setIrum] = useState('');

    //추가버튼 이벤트
    const btnInsert = () => {
        setNames(names.concat(irum)); // 배열에 irum 데이터 추가
        setIrum(''); //입력창 초기화
    }

    //입력 change이벤트
    const txtInput = (e) => {
        setIrum(e.target.value);
    }

    //enter쳐도 추가되는지..

    //더블클릭하면 이름삭제
    const dataRemove = (index)=>{
        console.log("remove: "+index);

        //filter()함수 이용해서 삭제
        setNames(names.filter((item,i)=>i!==index));
    }


    return (
        <div>
            <Alert severity="info" style={{ fontSize: '25px' }}>SixApp입니다</Alert>

            <input value={irum} onChange={txtInput} />
            <button onClick={btnInsert} type='button'>추가</button>
            <br />
            <h5>이름을 더블클릭하면 삭제됩니다.</h5>
            <ul>
                {

                    names.map((name, index) => (<li key={index} onDoubleClick={()=>dataRemove(index)}>{name}</li>))

                }
            </ul>
        </div>
    );
}

export default SixApp;