<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use EloquentFilter\Filterable;

class Partner extends Model
{
    use Filterable;
    use HasFactory;

    public $table = 'partner_locator';

    public $fillable = ['company', 'logo', 'status', 'address', 'phone', 'website', 'countries_covered', 'states_covered'];

    protected $appends = ['full_name'];



    public function getCountriesAttribute()
    {
        return $this->strToArray($this->countries_covered);
    }

    public function getStatesAttribute()
    {
        return $this->strToArray($this->states_covered);

    }

    public function getFullNameAttribute()
    {
        return true;
    }
    private function strToArray($covered){
        $str = str_replace('"', '', $covered);
        $str_1 = str_replace("'", '', $str);
        $str_2 = str_replace('[', '', $str_1);
        $str_3 = str_replace(']', '', $str_2);
        $arr = explode(',', $str_3);
        return $arr;
    }
}
