import React , {useMemo, useState, useEffect} from 'react';
import {Container, Content, Filters } from './styles';
import ContentHeader from '../../components/ContentHeader';
import SelectInput from '../../components/SelectInput';
import HistoryFinnanceCard from '../../components/HistoryFinnanceCard';
import gains from '../../repositories/gains';
import expenses from '../../repositories/expenses';

interface IRouteParams {
    match: {
        params: {
            type: string;
        }
    }
}

interface IData {
    description: string;
    amountFormatted: string;
    frequency: string;
    dateFormatted: string;
    tagColor: string;

}

const List: React.FC<IRouteParams> = ({ match }) => {
<<<<<<< HEAD
   // const [data, setData] = useState<IData>([]);
=======
    const [data, setData] = useState<IData>([]);
>>>>>>> 1ae50f54225a7feaf87cbcf3e8d89d1d2a1eac2a
    const { type } = match.params;
    const title = useMemo(() => {
        return type === 'entry-balance' ? 'Entradas' : 'Saídas'
    }, [type]);

    const lineColor = useMemo(() => {
        return type === 'entry-balance' ? '#F7931B' : '#E44C4E'
    }, [type]);

<<<<<<< HEAD
    const listData = useMemo(() => {
        return type === 'entry-balance' ?  gains : expenses;
    },[type]);

=======
>>>>>>> 1ae50f54225a7feaf87cbcf3e8d89d1d2a1eac2a
    const months = [
        {value: 2, label: 'Fevereiro'},
        {value: 3, label: 'Março'},
        {value: 4, label: 'Abril'},
    ];
    const years = [
        {value: 2021, label: '2021'},
        {value: 2020, label: '2020'},
        {value: 2019, label: '2019'}
    ];

    useEffect (() => {
<<<<<<< HEAD
        console.log(listData)
    },[]);
=======
        const 
    },[];)
>>>>>>> 1ae50f54225a7feaf87cbcf3e8d89d1d2a1eac2a

    return (
        <Container>
            <ContentHeader title={title} lineColor={lineColor}>
                <SelectInput  options={months} />
                <SelectInput  options={years} />
            </ ContentHeader>

            <Filters>
                <button 
                    type="button"
                    className="tag-filter tag-filter-recurrent"
                >
                    Recorrentes
                </button>
                <button 
                    type="button"
                    className="tag-filter tag-filter-eventual"
                >
                    Eventuais
                </button>
            </Filters>

            <Content>
            <HistoryFinnanceCard 
                    tagColor="#E44C4E"
                    title="Conta de Luz"
                    subtitle="27/02/2021"
                    amount="R$ 230,00"
                />
            </Content>
        </Container>        
    );
}

export default List;