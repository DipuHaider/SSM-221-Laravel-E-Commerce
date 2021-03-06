@extends ('backend.template.layout')

@section('dashboard-content')
<div class="br-mainpanel">
  <div class="br-pagetitle">
    <i class="icon ion-ios-home-outline"></i>
    <div>
      <h4>Update Division</h4>
      <p class="mg-b-0">Do bigger things with Bracket plus, the responsive bootstrap 4 admin template.</p>
    </div>
  </div>

  <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="br-section-label">Edit a Division</h6>
          <p class="br-section-text">Edit a Division here.</p>

          <div class="row mg-b-20">
            <div class="col-md">
              <div class="card card-body">
                <!--Create New Division Form Start -->
					<form action="{{ route('updateDivision', $division->id) }}" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="from-group">
							<label>Division Name</label>
							<input type="text" name="name" class="form-control"
							value="{{ $division->name }}">
						</div>

						<div class="from-group">
							<label>Priority Number</label>
							<input type="text" name="priority" class="form-control"
							value="{{ $division->priority }}">
						</div>

						<div class="from-group mt-5">
							<input type="submit" name="saveChanges" value="Save Changes" class="btn btn-primary">
						</div>
					</form>
				<!--Create New Division Form End -->
              </div><!-- card -->
            </div><!-- col -->
          </div><!-- row -->

        </div><!-- br-section-wrapper -->
      </div>

@endsection