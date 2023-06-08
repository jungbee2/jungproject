import React from 'react';
import Alert from '@mui/material/Alert';
import BusAlertIcon from '@mui/icons-material/BusAlert';

function FourApp(props) {

    //배열 변수선언
    const names=['박영민','강재훈','안채원','이시연','정태현'];


    //반복문을 변수에 저장후 출력해도 됨..리턴해서 직접주는 경우가 더 많다
    const nameList= names.map((name)=>(<li>{name}</li>)); //한줄은 자동리턴 (li가 리턴)

    //색상을 배열로
    const colors=['red','cyan','gray','yellow','tomato'];

    return (
        <div>
            <Alert severity="error" style={{fontSize:'25px'}}>FourApp입니다 &nbsp; <BusAlertIcon/>
            </Alert>
            <Alert severity="warning">FourApp입니다</Alert>
            <Alert severity="info">FourApp입니다</Alert>
            <Alert severity="success">FourApp입니다</Alert>

            <div>
                <h3>map 반복문 연습</h3>
                <ol>{nameList}</ol>
                <hr/>
                <ul>
                    {
                        // 반복문 리턴에 직접 주는 경우
                        names.map((name,index)=>(<b style={{marginLeft:'10px'}}>{index}:{name}</b>))            
                    }
                </ul>
            </div>

            <div>
                <h3>colors</h3>
                <hr/>
                <ul>
                    {
                        // 반복문 리턴에 직접 주는 경우
                        colors.map((color)=>(<div className='box' style={{backgroundColor:color}}></div>))            
                    }
                </ul>
            </div>
        </div>
    );
}

export default FourApp;