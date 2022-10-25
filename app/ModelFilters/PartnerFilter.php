<?php

namespace App\ModelFilters;

use EloquentFilter\ModelFilter;

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
    public function country($world){
        return $this->where('countries_covered', 'LIKE', '%'.$world.'%');
    }
    public function state($world){
        return $this->where('states_covered', 'LIKE', '%'.$world.'%');
    }
}
