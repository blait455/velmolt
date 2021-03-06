@extends('master')
@section('css')

@endsection

@section('content')
<div class="container-fluid mt--6">
  <div class="content-wrapper">
    <div class="row">
      <div class="col-md-3">
        <div class="card">
          <div class="card-body">
              <div class="row">
                <div class="col">
                    <div>
                      <h3 class="default">{{__('Users')}}</h3>
                      <ul class="list list-unstyled mb-0 text-sm">
                        <li>{{__('Active users:')}} <span class="font-weight-semibold text-default">#{{$activeusers}}</span></li>
                        <li>{{__('Blocked users:')}} <span class="font-weight-semibold text-default">#{{$blockedusers}}</span></li>
                      </ul>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="icon icon-shape text-white rounded-circle" style="background-color:{{$set->s_c}};">
                      <i class="fal fa-user"></i>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <div class="card-body">
              <div class="row">
                <div class="col">
                    <div>
                      <h3 class="card-title">{{__('Support Ticket')}}</h3>
                      <ul class="list list-unstyled mb-0 text-sm">
                        <li>{{__('Open tickets:')}} <span class="font-weight-semibold text-default">
                          #{{$openticket}}</span></li>
                        <li>{{__('Closed tickets:')}} <span class="font-weight-semibold text-default">
                          #{{$closedticket}}</span>
                        </li>
                      </ul>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="icon icon-shape text-white rounded-circle" style="background-color:{{$set->s_c}};">
                      <i class="fal fa-support"></i>
                    </div>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <div class="card-body">
              <div class="row">
                <div class="col">
                    <div>
                        <h3 class="card-title">{{__('Platform Reviews')}}</h3>
                        <ul class="list list-unstyled mb-0 text-sm">
                        <li>{{__('Published reviews:')}} <span class="font-weight-semibold text-default">
                            #{{$pubreview}}</span></li>
                        <li>{{__('Pending reviews:')}} <span class="font-weight-semibold text-default">
                            #{{$unpubreview}}</span>
                        </li>
                        </ul>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="icon icon-shape text-white rounded-circle" style="background-color:{{$set->s_c}};">
                      <i class="fal fa-comments"></i>
                    </div>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <div class="card-body">
              <div class="row">
                <div class="col">
                    <div>
                        <h3 class="card-title">{{__('Other Deposits')}}</h3>
                        <ul class="list list-unstyled mb-0 text-sm">
                        <li>{{__('Pending:')}} <span class="font-weight-semibold text-default">
                            #{{$pendingdep}}</span></li>
                        <li>{{__('Approved:')}} <span class="font-weight-semibold text-default">
                            #{{$approveddep}}</span>
                        </li>
                        </ul>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="icon icon-shape text-white rounded-circle" style="background-color:{{$set->s_c}};">
                      <i class="fal fa-credit-card"></i>
                    </div>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <div class="card-body">
              <div class="row">
                <div class="col">
                    <div>
                        <h3 class="card-title">{{__('Withdrawal')}}</h3>
                        <ul class="list list-unstyled mb-0 text-sm">
                        <li>{{__('Pending:')}} <span class="font-weight-semibold text-default">
                            #{{$pendingwd}}</span></li>
                        <li>{{__('Approved:')}} <span class="font-weight-semibold text-default">
                            #{{$approvedwd}}</span>
                        </li>
                        </li>
                        </ul>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="icon icon-shape text-white rounded-circle" style="background-color:{{$set->s_c}};">
                      <i class="fal fa-wallet"></i>
                    </div>
                </div>
              </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <div class="card-body">
                <div class="row">
                    <div class="col">
                        <div>
                            <h3 class="card-title">{{__('Investment plans')}}</h3>
                            <ul class="list list-unstyled mb-0 text-sm">
                            <li>{{__('Active:')}} <span class="font-weight-semibold text-default">
                                #{{$appplan}}</span></li>
                            <li>{{__('Disabled:')}} <span class="font-weight-semibold text-default">
                                #{{$penplan}}</span>
                            </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="icon icon-shape text-white rounded-circle" style="background-color:{{$set->s_c}};">
                        <i class="fal fa-book"></i>
                        </div>
                    </div>
                </div>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <div class="card-body">
              <div class="row">
                <div class="col">
                    <div>
                        <h3 class="card-title">{{__('Investment')}}</h3>
                        <ul class="list list-unstyled mb-0 text-sm">
                            <li>{{__('Active:')}} <span class="font-weight-semibold text-default">
                                #{{$appprofit}}</span></li>
                            <li>{{__('Completed:')}} <span class="font-weight-semibold text-default">
                                #{{$penprofit}}</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-auto">
                    <div class="icon icon-shape text-white rounded-circle" style="background-color:{{$set->s_c}};">
                      <i class="fal fa-pie-chart"></i>
                    </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  @stop
