import React from 'react';
import Title from './components/Title';
import Info from './components/Info';
import Menu from './components/Menu';
import Main from './components/Main';
import Shop from './shop/Shop';
import Board from './board/Board';
import Login from './login/Login';
import Member from './member/Member';
import About from './components/About';
import { Routes,Route } from 'react-router-dom';
import ShopForm from './shop/ShopForm';
import ShopDetail from './shop/ShopDetail';

function RouterMain(props) {
    return (
        <div>
            <div className='title'><Title/></div>
            <div className='info'><Info/></div>
            <div className='menu'><Menu/></div>
            <div className='main'>
                <Routes>
                    <Route path='/' element={<Main/>}/>

                    {/*Shop을 자세히 나눌예정*/}
                    <Route path='/shop/list' element={<Shop/>}/>
                    <Route path='/shop/Form' element={<ShopForm/>}/>
                    <Route path='/shop/detail/:num' element={<ShopDetail/>}/>

                    <Route path='/board/list' element={<Board/>}/>
                    <Route path='/login/list' element={<Login/>}/>
                    <Route path='/member/list' element={<Member/>}/>
                    <Route path='/about/list' element={<About/>}/>

                    <Route path='*' element={
                        <div>
                            <h1>잘못된 주소입니다.</h1>
                        </div>
                    }>
                    </Route>
                </Routes>

            </div>
        </div>
    );
}

export default RouterMain;