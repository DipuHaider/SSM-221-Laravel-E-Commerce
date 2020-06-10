@extends ('backend.template.layout')

@section('dashboard-content')
<div class="br-mainpanel">
  <div class="br-pagetitle">
    <i class="icon ion-ios-home-outline"></i>
    <div>
      <h4>Create District</h4>
      <p class="mg-b-0">Do bigger things with Bracket plus, the responsive bootstrap 4 admin template.</p>
    </div>
  </div>

  <div class="br-pagebody">
        <div class="br-section-wrapper">
          <h6 class="br-section-label">Create a District</h6>
          <p class="br-section-text">Enter a District here.</p>

          <div class="row mg-b-20">
            <div class="col-md">
              <div class="card card-body">
                <!--Create New District Form Start -->
					<form action="{{ route('storeDistrict') }}" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="from-group">
							<label>District Name</label>
							<input type="text" name="name" class="form-control">
						</div>

						<div class="from-group">
              <label>Select Division</label>
              <select name="division_id" class="form-control">
                <option>Please select Division name</option>
                @foreach ( App\Models\Backend\Division::orderBy('name', 'asc')->get() as $division )
                  <option value="{{ $division->id }}">{{ $division->name }}</option>
                @endforeach
              </select>
            </div>
					

						<div class="from-group mt-5">
							<input type="submit" name="addDistrict" value="Add District" class="btn btn-primary">
						</div>
					</form>
				<!--Create New District Form End -->
              </div><!-- card -->
            </div><!-- col -->
          </div><!-- row -->

        </div><!-- br-section-wrapper -->
      </div>

@endsection