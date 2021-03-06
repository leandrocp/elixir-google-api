# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Classroom.V1.Model.StudentSubmission do
  @moduledoc """
  Student submission for course work.  StudentSubmission items are generated when a CourseWork item is created.  StudentSubmissions that have never been accessed (i.e. with &#x60;state&#x60; &#x3D; NEW) may not have a creation time or update time.

  ## Attributes

  - alternateLink (String.t): Absolute link to the submission in the Classroom web UI.  Read-only. Defaults to: `null`.
  - assignedGrade (float()): Optional grade. If unset, no grade was set. This value must be non-negative. Decimal (i.e. non-integer) values are allowed, but will be rounded to two decimal places.  This may be modified only by course teachers. Defaults to: `null`.
  - assignmentSubmission (AssignmentSubmission): Submission content when course_work_type is ASSIGNMENT.  Students can modify this content using google.classroom.Work.ModifyAttachments. Defaults to: `null`.
  - associatedWithDeveloper (boolean()): Whether this student submission is associated with the Developer Console project making the request.  See google.classroom.Work.CreateCourseWork for more details.  Read-only. Defaults to: `null`.
  - courseId (String.t): Identifier of the course.  Read-only. Defaults to: `null`.
  - courseWorkId (String.t): Identifier for the course work this corresponds to.  Read-only. Defaults to: `null`.
  - courseWorkType (String.t): Type of course work this submission is for.  Read-only. Defaults to: `null`.
    - Enum - one of [COURSE_WORK_TYPE_UNSPECIFIED, ASSIGNMENT, SHORT_ANSWER_QUESTION, MULTIPLE_CHOICE_QUESTION]
  - creationTime (DateTime.t): Creation time of this submission. This may be unset if the student has not accessed this item.  Read-only. Defaults to: `null`.
  - draftGrade (float()): Optional pending grade. If unset, no grade was set. This value must be non-negative. Decimal (i.e. non-integer) values are allowed, but will be rounded to two decimal places.  This is only visible to and modifiable by course teachers. Defaults to: `null`.
  - id (String.t): Classroom-assigned Identifier for the student submission. This is unique among submissions for the relevant course work.  Read-only. Defaults to: `null`.
  - late (boolean()): Whether this submission is late.  Read-only. Defaults to: `null`.
  - multipleChoiceSubmission (MultipleChoiceSubmission): Submission content when course_work_type is MULTIPLE_CHOICE_QUESTION. Defaults to: `null`.
  - shortAnswerSubmission (ShortAnswerSubmission): Submission content when course_work_type is SHORT_ANSWER_QUESTION. Defaults to: `null`.
  - state (String.t): State of this submission.  Read-only. Defaults to: `null`.
    - Enum - one of [SUBMISSION_STATE_UNSPECIFIED, NEW, CREATED, TURNED_IN, RETURNED, RECLAIMED_BY_STUDENT]
  - submissionHistory ([SubmissionHistory]): The history of the submission (includes state and grade histories).  Read-only. Defaults to: `null`.
  - updateTime (DateTime.t): Last update time of this submission. This may be unset if the student has not accessed this item.  Read-only. Defaults to: `null`.
  - userId (String.t): Identifier for the student that owns this submission.  Read-only. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => any(),
          :assignedGrade => any(),
          :assignmentSubmission => GoogleApi.Classroom.V1.Model.AssignmentSubmission.t(),
          :associatedWithDeveloper => any(),
          :courseId => any(),
          :courseWorkId => any(),
          :courseWorkType => any(),
          :creationTime => DateTime.t(),
          :draftGrade => any(),
          :id => any(),
          :late => any(),
          :multipleChoiceSubmission => GoogleApi.Classroom.V1.Model.MultipleChoiceSubmission.t(),
          :shortAnswerSubmission => GoogleApi.Classroom.V1.Model.ShortAnswerSubmission.t(),
          :state => any(),
          :submissionHistory => list(GoogleApi.Classroom.V1.Model.SubmissionHistory.t()),
          :updateTime => DateTime.t(),
          :userId => any()
        }

  field(:alternateLink)
  field(:assignedGrade)
  field(:assignmentSubmission, as: GoogleApi.Classroom.V1.Model.AssignmentSubmission)
  field(:associatedWithDeveloper)
  field(:courseId)
  field(:courseWorkId)
  field(:courseWorkType)
  field(:creationTime, as: DateTime)
  field(:draftGrade)
  field(:id)
  field(:late)
  field(:multipleChoiceSubmission, as: GoogleApi.Classroom.V1.Model.MultipleChoiceSubmission)
  field(:shortAnswerSubmission, as: GoogleApi.Classroom.V1.Model.ShortAnswerSubmission)
  field(:state)
  field(:submissionHistory, as: GoogleApi.Classroom.V1.Model.SubmissionHistory, type: :list)
  field(:updateTime, as: DateTime)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.StudentSubmission do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.StudentSubmission.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.StudentSubmission do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
