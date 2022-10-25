<?php

namespace App\Http\Controllers;

use App\Http\Resources\StateResource;
use App\Models\State;
use Illuminate\Http\Request;

class StateController extends Controller
{
    public function getStates($id=null)
    {
        $all = State::where('country_id',$id)->get();
        return StateResource::collection($all);
    }
}
