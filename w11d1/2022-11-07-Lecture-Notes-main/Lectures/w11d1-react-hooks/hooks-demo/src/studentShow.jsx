import React, {useState, useEffect} from 'react';
import { Link, useParams } from 'react-router-dom';

function StudentShow(props) {
    const {studentName} = useParams();

    const [currentStudent, setCurrentStudent] = useState({})

    useEffect(() => {
        console.log(studentName);
        const fetchStudents = async () => {
            const data = await fetch('../data.json', {
                headers: {
                    'Content-Type': 'application.json',
                    'Accept': 'application.json'
                }
            })

            if (data.ok) {
                const passedData = await data.json();
                const foundStudent = parsedData.find() => (student.name === studentName))
                setCurrentStudent(foundStudent)
            } else {

            }
        }
    }
    fetchStudents();
}, [studentName])

return (
    <div>
        <h2>{currentStudent.name}</h2>
        <h3>{currentStudent.house}</h3>
        <h4>{currentStudent.dateOfBirth}</h4>
    </div>
)
}

export default StudentShow;

<Link to={}
