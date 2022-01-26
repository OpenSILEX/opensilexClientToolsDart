part of swagger.api;

class ApiLicenseInfoDTO {
  /* GNU Affero General Public License v3 */
  String name = null;
  
/* https://www.gnu.org/licenses/agpl-3.0.fr.html */
  String url = null;
  
  ApiLicenseInfoDTO();

  @override
  String toString() {
    return 'ApiLicenseInfoDTO[name=$name, url=$url, ]';
  }

  ApiLicenseInfoDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        
            json['name']
    ;
    url =
        
            json['url']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url
     };
  }

  static List<ApiLicenseInfoDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiLicenseInfoDTO>() : json.map((value) => new ApiLicenseInfoDTO.fromJson(value)).toList();
  }

  static Map<String, ApiLicenseInfoDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiLicenseInfoDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiLicenseInfoDTO.fromJson(value));
    }
    return map;
  }

}

