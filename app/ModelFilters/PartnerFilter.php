<?php

namespace App\ModelFilters;

use EloquentFilter\ModelFilter;
use App\Models\Type;
use App\Models\Country;
use App\Models\State;

class PartnerFilter extends ModelFilter
{
    /**
    * Related Models that have ModelFilters as well as the method on the ModelFilter
    * As [relationMethod => [input_key1, input_key2]].
    *
    * @var array
    */
    public $relations = [];

    public function company($world)
    {
        return $this->where('company', 'LIKE', '%'.$world.'%');
    }
    public function address($world){
        return $this->where('address', 'LIKE', '%'.$world.'%');
    }
    public function type($id){
        $type = Type::find($id);
        return $this->where('status', $type->name);
    }
    public function country($id){
        $country = Country::find($id);
        if($country){
            return $this->where('countries_covered', 'LIKE', '%'.$country->short_name.'%');
        }
    }
    public function state($id){
        $state = State::find($id);
        return $this->where('states_covered', 'LIKE', '%'.$state->short_name.'%');
    }
}
