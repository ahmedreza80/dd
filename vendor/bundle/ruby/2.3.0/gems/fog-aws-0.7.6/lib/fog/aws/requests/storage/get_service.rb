module Fog
  module Storage
    class AWS
      class Real
        require 'fog/aws/parsers/storage/get_service'

        # List information about S3 buckets for authorized user
        #
        # @return [Excon::Response] response:
        #   * body [Hash]:
        #     * Buckets [Hash]:
        #       * Name [String] - Name of bucket
        #       * CreationTime [Time] - Timestamp of bucket creation
        #     * Owner [Hash]:
        #       * DisplayName [String] - Display name of bucket owner
        #       * ID [String] - Id of bucket owner
        #
        # @see http://docs.amazonwebservices.com/AmazonS3/latest/API/RESTServiceGET.html
        #
        def get_service
          request({
            :expects  => 200,
            :headers  => {},
            :host     => @host,
            :idempotent => true,
            :method   => 'GET',
            :parser   => Fog::Parsers::Storage::AWS::GetService.new
          })
        end
      end

      class Mock # :nodoc:all
        def get_service
          response = Excon::Response.new
          response.headers['Status'] = 200
          buckets = self.data[:buckets].values.map do |bucket|
            bucket.reject do |key, value|
              !['CreationDate', 'Name'].include?(key)
            end
          end
          response.body = {
            'Buckets' => buckets,
            'Owner'   => { 'DisplayName' => 'owner', 'ID' => 'some_id'}
          }
          response
        end
      end
    end
  end
end
