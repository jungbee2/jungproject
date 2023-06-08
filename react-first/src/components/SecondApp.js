import React from 'react';
import img01 from '../image/img01.jpg';
//import img02 from '../image/img02.png';

function SecondApp(props) {

    //스타일 변수지정
    const styleImg1={
        width:'200px',
        border:'5px solid green',
        borderRadius:'30px',
        marginLeft:'100px',
        marginTop:'50px'
    }

    let helloElement=<h1>Hello~~Element!!</h1>;
    
    return (
        <div>
            <h2 className='alert alert-danger'>SecondApp</h2>
            <div>
                이미지 연습 : src영역은 반드시 import,public 영역은 직접호출 가능
            </div>
            <img src={img01} alt='이미지1'
            style={{width:'200px',border:'3px solid pink',
            borderRadius:'50px',marginLeft:'20px'}}/>

            <h3>public 영역 이미지</h3>
            <img style={styleImg1} alt='이미지2' src='../img03.png'/>

            {helloElement}
            {helloElement}
            {helloElement}
        </div>
    );
}

export default SecondApp;