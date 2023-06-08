import React from 'react';
import Menu from './components/Menu';
import { Route, Routes } from 'react-router-dom';
import Home from './components/pages/Home';
import About from './components/pages/About';
import './App.css';

function RouterMain(props) {
    return (
        <div>
            {/*모든페이지에서 공통으로 포함되는 컴포넌트나 이미지*/}
            <Menu />
            <img src='./image/1.jpg' alt='이미지' className='main_photo' />
            <hr className='line' />

            <div className='main_comp'>
                <Routes>
                    <Route path='/' element={<Home />} />
                    <Route path='/about' element={<About />} />
                    <Route path='/about/:name' element={<About />} />
                    <Route path='/login/*' element={
                        <div>
                            <h1>로그인 기능은 아직구현전 입니다. </h1>
                        </div>
                    }>
                        {/*그 이외의 매핑주소일 경우*/}
                        <Route path='*' element={
                            <h1>잘못된 주소입니다.</h1>
                        }>

                        </Route>
                    </Route>
                </Routes>
            </div>
        </div>
    );
}

export default RouterMain;