import jobData from "../assets/jobData";
import JobIndexItem from "./JobIndexItem";

const JobIndex = props => {
  const jobs = Object.values(jobData);

  const jobList = jobs.map(job => {
    return <JobIndexItem key={job.id} job={job} />;
  })

  return (
    <ul className="job-index">
      {jobList}
    </ul>
  );
}

export default JobIndex;